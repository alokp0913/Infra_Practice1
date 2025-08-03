resource "azurerm_resource_group" "examprg12le" {
  name     = "alok-rg234"
  location = "east us"
}


resource "azurerm_storage_account" "stg65" {
    depends_on = [ azurerm_resource_group.examprg12le ]
  name                     = "alokssa755"
  resource_group_name      = "alok-rg234"
  location                 = "east us"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}