resource "azurerm_resource_group" "str01" {
  name     = "st01"
  location = "West Europe"
}

resource "azurerm_storage_account" "demostr01" {
  name                     = "examplestorage"
  resource_group_name      = azurerm_resource_group.str01.name
  location                 = azurerm_resource_group.str01.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "production"
  }
}