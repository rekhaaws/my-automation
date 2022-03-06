# to create a resource group
module "azure-devrgroup" {
  source             = "../azure-rgroup"
  location           = var.location
  rgname             = var.rgname
  tags               = var.tags
}


module "virtual_network" {
    source  = "../network/modules/vnet"
    vnetname                      = var.vnetname
    # resource_group_name           = var.resource_group_name
    resource_group_name           = module.azure-devrgroup.res_group_name
    location                      = var.location
    address_space                 = var.address_space
    tags                          = var.tags
}

module "subnet" {
    source                                         = "../network/modules/subnet"
    resource_group_name                            = module.azure-devrgroup.res_group_name
    snet_name                                      = var.snet_name
    virtual_network_name                           = module.virtual_network.azvnet_name
    address_prefixes                               = var.address_prefixes
    enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "network_security_group" {
    source                      = "../network/modules/network_security_group"
    location                    = var.location
    resource_group_name         = module.azure-devrgroup.res_group_name
    network_security_group_name = "dev"
    tags                        = var.tags
} 

module "nsg_subnet_association" {
    source                  = "../network/modules/network_security_group_subnet_association"
    subnet_id               = module.subnet.id
    network_security_group_id = module.network_security_group.id
}
