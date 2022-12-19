resource "azurerm_resource_group" "rg" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_cognitive_account" "computer_vision_service" {
  name                          = var.name
  resource_group_name           = var.create_resource_group ? azurerm_resource_group.rg[0].name : data.azurerm_resource_group.rg[0].name
  location                      = var.location
  sku_name                      = var.sku_name
  tags                          = var.tags
  public_network_access_enabled = var.public_network_access_enabled

  kind                          = "ComputerVision"

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}


