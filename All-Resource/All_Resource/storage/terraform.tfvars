storage01 = {
  "st1" = {
    "name"                     = "frontend1111storage"
    "resource_group_name"      = "frontend-resource"
    "location"                 = "westus"
    "account_tier"             = "Standard"
    "account_replication_type" = "GRS"
  }

  "st2" = {
    "name"                     = "backend1111storage"
    "resource_group_name"      = "backend-resource"
    "location"                 = "eastus"
    "account_tier"             = "Standard"
    "account_replication_type" = "GRS"
  }
   "st3" = {
    "name"                     = "database1111storage"
    "resource_group_name"      = "database-resource"
    "location"                 = "centralindia"
    "account_tier"             = "Standard"
    "account_replication_type" = "GRS"
  }
}