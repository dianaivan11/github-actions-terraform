## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.35.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.35.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_cognitive_account.computer_vision_service](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cognitive_account) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_resource_group"></a> [create\_resource\_group](#input\_create\_resource\_group) | (Required) Specifies if the resource group must be created or not. | `bool` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Specifies the name of the Cognitive Service Account. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | (Optional) Whether public network access is allowed for the Cognitive Account. | `bool` | `true` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which the Cognitive Service Account is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | (Required) Specifies the SKU Name for this Cognitive Service Account. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resource. | `map(any)` | <pre>{<br>  "environment": "test",<br>  "owner": "ntt"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_computer_vision_endpoint"></a> [computer\_vision\_endpoint](#output\_computer\_vision\_endpoint) | The endpoint used to connect to the Cognitive Service Account. |
| <a name="output_computer_vision_id"></a> [computer\_vision\_id](#output\_computer\_vision\_id) | The ID of the Cognitive Service Account. |
| <a name="output_computer_vision_primary_access_key"></a> [computer\_vision\_primary\_access\_key](#output\_computer\_vision\_primary\_access\_key) | A primary access key which can be used to connect to the Cognitive Service Account. |
| <a name="output_computer_vision_secondary_access_key"></a> [computer\_vision\_secondary\_access\_key](#output\_computer\_vision\_secondary\_access\_key) | The secondary access key which can be used to connect to the Cognitive Service Account. |
