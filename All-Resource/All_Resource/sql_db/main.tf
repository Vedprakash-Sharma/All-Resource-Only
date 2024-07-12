resource "azurerm_mssql_server" "sql_server88" {
  for_each                     = var.sql_database
  name                         = each.value.sql_server_name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
}

resource "azurerm_mssql_database" "sql_db88" {
  for_each     = var.sql_database
  name         = each.value.sql_db_name
  server_id    = azurerm_mssql_server.sql_server88[each.key].id
  collation    = each.value.collation
  license_type = each.value.license_type
  max_size_gb    = each.value.max_size_gb
  sku_name       = each.value.sku_name
  zone_redundant = each.value.zone_redundant
  enclave_type   = each.value.enclave_type
}