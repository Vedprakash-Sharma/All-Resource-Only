linux_vartual_Machine = {
  vm1 = {
    pip_name                      = "frontend_public_ip"
    nic_name                      = "frontend_vm_nic"
    ip_name                       = "frontend_ip_configration"
    vm_name                       = "frontendVM"
    resource_group_name           = "frontend-resource"
    location                      = "westus"
    allocation_method             = "Static"
    sku                           = "Standard"
    private_ip_address_allocation = "Dynamic"
    size                          = "Standard_F2"
    subnet_name                   = "frontend-subnet01"
    virtual_network_name          = "frontend-vnet"
  }
  vm2 = {
    pip_name                      = "backend_public_ip"
    nic_name                      = "backend-nic"
    ip_name                       = "backend_ip_configration"
    vm_name                       = "backendVM"
    resource_group_name           = "backend-resource"
    location                      = "eastus"
    allocation_method             = "Static"
    sku                           = "Standard"
    private_ip_address_allocation = "Dynamic"
    size                          = "Standard_B2s"
    # admin_username                = "aduser"
    # admin_password                = "Vedprakash@12346789"
    subnet_name                   = "backend-subnet01"
    virtual_network_name          = "backend-vnet"
  }
}