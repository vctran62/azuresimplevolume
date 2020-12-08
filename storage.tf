resource "azurerm_resource_group" "test" {
  name     = "testacctestRG-demo"
  location = "westus"
}

resource "azurerm_storage_account" "test" {
  name                     = "mojodemoteststorage"
  resource_group_name      = "${azurerm_resource_group.test.name}"
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
