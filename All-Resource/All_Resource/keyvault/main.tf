provider "azurerm" {
    
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    
  }
  
}

data "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "vedkeyvault" {
  name                        = "vedkeyvauit"
  location                    = "japanwest"
  resource_group_name         = "frontend-resource"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = ["Create", "Get", "Delete", "Purge", "List"]

    secret_permissions = ["Backup", "Get", "Delete", "Recover", "Purge", "Restore", "Set", "List"]

    storage_permissions = [
      "Get", "Delete"
    ]
  }
}

resource "azurerm_key_vault_secret" "vedkeyscreate" {
  name         = "username"
  value        = "vedprakash"
  key_vault_id = azurerm_key_vault.vedkeyvault.id
}

resource "azurerm_key_vault_secret" "vedkeyscreate01" {
  name         = "password"
  value        = "ved@sharma0708"
  key_vault_id = azurerm_key_vault.vedkeyvault.id
}