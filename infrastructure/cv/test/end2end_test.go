package test

import (
	"github.com/gruntwork-io/terratest/modules/logger"
	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestEndToEndDeploymentScenario(t *testing.T) {
	t.Parallel()
	fixtureFolder := "../example"

	test_structure.RunTestStage(t, "setup", func() {
		terraformOptions := &terraform.Options{
			TerraformDir: fixtureFolder,
		}

		test_structure.SaveTerraformOptions(t, fixtureFolder, terraformOptions)
		terraform.InitAndApply(t, terraformOptions)
	})

	test_structure.RunTestStage(t, "validate", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, fixtureFolder)

		// From here down it's different
		cvResourceId := terraform.Output(t, terraformOptions, "computer_vision_id")
		cvEndpoint := terraform.Output(t, terraformOptions, "computer_vision_endpoint")

		cvPrimaryAccessKey := fetchSensitiveOutput(t, terraformOptions, "computer_vision_primary_access_key")
		cvSecondaryAccessKey := fetchSensitiveOutput(t, terraformOptions, "computer_vision_secondary_access_key")

		// Check that output is not empty
		assert.NotEmpty(t, cvResourceId, "cvResourceId is empty")
		assert.NotEmpty(t, cvEndpoint, "cvEndpoint is empty")
		assert.NotEmpty(t, cvPrimaryAccessKey, "cvPrimaryAccessKey is empty")
		assert.NotEmpty(t, cvSecondaryAccessKey, "cvSecondaryAccessKey is empty")
	})

	test_structure.RunTestStage(t, "teardown", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, fixtureFolder)
		terraform.Destroy(t, terraformOptions)
	})
}

func fetchSensitiveOutput(t *testing.T, options *terraform.Options, name string) string {
	defer func() {
		options.Logger = nil
	}()
	options.Logger = logger.Discard
	return terraform.Output(t, options, name)
}
