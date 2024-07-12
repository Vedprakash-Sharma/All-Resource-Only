vmsubnet = {
  # for frontend 
  "snet1" = {
    "name"                 = "frontend-subnet01"
    "resource_group_name"  = "frontend-resource"
    "virtual_network_name" = "frontend-vnet"
    "address_prefixes"     = ["10.0.1.0/24"]
  }

  "snet2" = {
    "name"                 = "backend-subnet01"
    "resource_group_name"  = "backend-resource"
    "virtual_network_name" = "backend-vnet"
    "address_prefixes"     = ["10.0.1.0/24"]
  }

    "snet3" = {
    "name"                 = "database-subnet01"
    "resource_group_name"  = "database-resource"
    "virtual_network_name" = "database-vnet"
    "address_prefixes"     = ["10.0.1.0/24"]
  }
    
}