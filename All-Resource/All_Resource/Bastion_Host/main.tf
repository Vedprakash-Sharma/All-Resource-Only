resource "azurerm_bastion_host" "Bastion_Host" {
  name                = "BastionHost"
  location            = "westus"
  resource_group_name = "frontend-resource"
   tunneling_enabled   = true
  ip_connect_enabled  = true
  sku = "Standard"

  ip_configuration {
    name                 = "bastion_host_ip_configuration"
    subnet_id            = data.azurerm_subnet.tiwari_ji.id
    public_ip_address_id = azurerm_public_ip.bastion_pip.id
  }
}

resource "azurerm_public_ip" "bastion_pip" {
  name                = "Bastion_public_ip"
  location            = "westus"
  resource_group_name = "frontend-resource"
  allocation_method   = "Static"
  sku                 = "Standard"
  
}