vmsubnet01 = {
  "vnet1" = {
    "name"                = "frontend-vnet"
    "location"            = "westus"
    "resource_group_name" = "frontend-resource"
    "address_space"       = ["10.0.0.0/16"]
    "dns_servers"         = ["10.0.0.4", "10.0.0.5"]
  }
  "vnet2" = {
    "name"                = "backend-vnet"
    "location"            = "eastus"
    "resource_group_name" = "backend-resource"
    "address_space"       = ["10.0.0.0/16"]
    "dns_servers"         = ["10.0.1.4", "10.0.1.5"]
  }
  
    "vnet4" = {
    "name"                = "database-vnet"
    "location"            = "centralindia"
    "resource_group_name" = "database-resource"
    "address_space"       = ["10.0.0.0/16"]
    "dns_servers"         = ["10.0.1.4", "10.0.1.5"]
  }
}