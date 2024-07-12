# resource "azurerm_public_ip" "pip" {
#   for_each            = var.linux_vartual_Machine
#   name                = each.value.pip_name
#   resource_group_name = each.value.resource_group_name
#   location            = each.value.location
#   allocation_method   = each.value.allocation_method
#   sku                 = each.value.sku

# }
resource "azurerm_network_interface" "vmnic06" {
  for_each            = var.linux_vartual_Machine
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_name
    subnet_id                     = data.azurerm_subnet.tiwari_ji[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
    # public_ip_address_id          = azurerm_public_ip.pip[each.key].id
  }
}
resource "azurerm_linux_virtual_machine" "virtual_machine" {
  for_each                        = var.linux_vartual_Machine
  name                            = each.value.vm_name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = each.value.size
  disable_password_authentication = "false"
  admin_username                  = data.azurerm_key_vault_secret.username.value
  admin_password                  = data.azurerm_key_vault_secret.password.value

  network_interface_ids           = [azurerm_network_interface.vmnic06[each.key].id, ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
