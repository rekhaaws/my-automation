resource "azurerm_virtual_network" "virtual_network" {
  
    name                          = "vnet-automation-${var.vnetname}-eus"
    resource_group_name           = var.resource_group_name
    location                      = var.location
    address_space                 = var.address_space
    # dns_servers                   = var.dns_servers var.name
    tags                          = var.tags
}