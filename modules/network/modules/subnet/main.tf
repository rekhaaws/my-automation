resource "azurerm_subnet" "subnet" {
  resource_group_name                            = var.resource_group_name
  name                                           = "subnet-${var.snet_name}-eus"
  virtual_network_name                           = var.virtual_network_name
  address_prefixes                               = var.address_prefixes
  # service_endpoints                              = var.service_endpoints
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}
