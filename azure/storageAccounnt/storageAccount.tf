resource "azurerm_resource_group" "first_resource_group_tf" {
  name     = "storage_account_resource_group"
  location = "West Europe"

  tags = local.common_tags
}

resource "azurerm_storage_account" "first_storage_account" {
  name                     = "firststorageaccou"
  resource_group_name      = azurerm_resource_group.first_resource_group_tf.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags =  local.common_tags
}

resource "azurerm_storage_container" "first_storage_container" {
  name                 = "images"
  storage_account_name = azurerm_storage_account.first_storage_account.name
}
