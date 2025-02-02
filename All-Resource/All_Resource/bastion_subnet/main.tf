resource "azurerm_subnet" "subnet_bastion" {
  for_each             = var.bastion_subnet
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}