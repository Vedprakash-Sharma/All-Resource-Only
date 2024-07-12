bastion_subnet = {
  # for frontend 
  "bsnet1" = {
    "name"                 = "AzureBastionSubnet"
    "resource_group_name"  = "frontend-resource"
    "virtual_network_name" = "frontend-vnet"
    "address_prefixes"     = ["10.0.4.0/24"]
  }
  
  "bsnet2" = {
    "name"                 = "AzureBastionSubnet"
    "resource_group_name"  = "frontend-resource"
    "virtual_network_name" = "frontend-vnet"
    "address_prefixes"     = ["10.0.5.0/24"]
  }
  
}