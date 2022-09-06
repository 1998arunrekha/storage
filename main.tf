resource "azurerm_resource_group" "sa" {
  name     = "sa01"
  location = "east us"
}

resource "azurerm_storage_account" "sa11" {
  name                     = "testsa"
  resource_group_name      = azurerm_resource_group.sa.name
  location                 = azurerm_resource_group.sa.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "production"
  }
}