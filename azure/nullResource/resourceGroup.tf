resource "azurerm_resource_group" "resource_group" {
  name     = "null_resourse"
  location = var.location

  tags = local.common_tags
}

resource "null_resource" "provisioner" {
  provisioner "local-exec" {
    command = "echo Resourso group ID: ${azurerm_resource_group.resource_group.id} >> resouse-group-id.txt"
  }
}
