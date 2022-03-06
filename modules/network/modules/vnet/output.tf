
# resource "azurerm_virtual_network" "virtual_network" {
  

output "id" {
  value = "${azurerm_virtual_network.virtual_network.id}"
}

# resource "azurerm_virtual_network" "azvnet" {
# output "azvnet_id" {
#   value = "${azurerm_virtual_network.azvnet.id}"
# }
output "azvnet_name" {
  value = "${azurerm_virtual_network.virtual_network.name}"
}
