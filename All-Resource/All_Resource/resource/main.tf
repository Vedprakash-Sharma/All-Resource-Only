resource "azurerm_resource_group" "RG" {
  for_each = var.rg_resource
  name     = each.value.name
  location = each.value.location

}
