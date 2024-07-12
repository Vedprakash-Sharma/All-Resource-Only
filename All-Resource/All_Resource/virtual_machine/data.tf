data "azurerm_subnet" "tiwari_ji" {
  for_each             = var.linux_vartual_Machine
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_key_vault_secret" "username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.key_vauit.id

}

data "azurerm_key_vault_secret" "password" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.key_vauit.id
}

data "azurerm_key_vault" "key_vauit" {
  name         = "vedkeyvauit"
  resource_group_name = "frontend-resource"

}