data "azurerm_subnet" "tiwari_ji" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "frontend-vnet"
  resource_group_name  = "frontend-resource"
}
