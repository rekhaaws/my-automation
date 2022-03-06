resource "azurerm_resource_group" "devstgrg" {
  location = var.location
  name   = "automation-${var.rgname}-eus"
  tags  = var.tags
}
