sql_database = {
  "sql1" = {
  sql_server_name              = "frontend-sql-server"
  sql_db_name                  = "frontend-sql-database"
  resource_group_name          = "frontend-resource"
  location                     = "westus"
  version                      =  "12.0"
  administrator_login          = "Aduser"
  administrator_login_password = "Rinkee@1234"
  collation                    = "SQL_Latin1_General_CP1_CI_AS"
  license_type                 = "LicenseIncluded"
  max_size_gb                  =  "2"
  sku_name                     = "s0"
  zone_redundant               = "false"
  enclave_type                 = "VBS"
}
}