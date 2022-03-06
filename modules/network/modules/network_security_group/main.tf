resource "azurerm_network_security_group" "nsg" {
  location                    = var.location
  resource_group_name         = var.resource_group_name
  name                        = "myapp-${var.network_security_group_name}-eus"
  tags                        = var.tags
}
