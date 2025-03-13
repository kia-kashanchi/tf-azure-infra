provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "vnet" {
  source                = "../modules/vnet"
  vnet_name            = var.vnet_name
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  address_space        = var.address_space
  subnet_name          = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  nsg_name             = var.nsg_name
  tags                  = var.tags
}