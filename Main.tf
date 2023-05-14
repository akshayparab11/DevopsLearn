resource "azurerm_resource_group" "QARG" {
  name     = "QA"
  location = "East US2"
}

resource "azurerm_storage_account" "store1" {
    name = "store1aks1889p"
    location = azurerm_resource_group.QARG.location
    resource_group_name = azurerm_resource_group.QARG.name
    account_tier = "Standard"
    account_replication_type = "LRS"
}