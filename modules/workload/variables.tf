variable "rgname" {

}

variable "tags" {
    description = "Provide tags for Network Security Group"
}

# variable "env" {

# }

# variable "environment" {

# }

# variable "resource_group_name" {
#     type = string
# }

variable "location" {
    type = string
    description = "regional location of resource"
    default = "eastus"
}
# variable "name"{
#     type = string
#     description = "Provide virtual network name"
# }

variable "vnetname"{

}
variable "address_space" {
    # type        = list(string)
    description = "The address space that is used by the virtual network."
}

variable "snet_name" {

}

variable "enforce_private_link_endpoint_network_policies" {

}

variable "address_prefixes" {

}

variable "law_name"{

}

variable "log_analytics_workspace_sku"{

}

variable "aks_admin" {

}

variable "aks_name" {

}

variable "private_cluster_enabled" {

}

variable "agent_pool_vmsize" {

}

variable "kubernetes_client_id" {

}

variable "kubernetes_client_secret" {

}

# variable "subnet_resource_group_name"{

# }
# variable "dns_servers" {
#     type        = list(string)
#     description = "The DNS servers to be used with vNet. Default is Azure DNS."
#     default     = []
# }

# variable "subnets" {
#     type = list(map(string))
#     description = "Provide subnet values for given Vnet"
#     default = []
# }

# # ------------- NSG Rules -------------
# variable "nsg_rules" {
#     type = list(map(string))
#     default = []
#     description = "Provide list of NSG rules to be applied to each subnet"
# }

# variable "vpn_gateway_name" {
#     type = string
#     description = "VPN Gateway name"
# }

# variable "site_to_site_links" {
#     type = list(object({
#         type = string
#         value = string
#     }))
#     description = "Provide list of site ip_address/fqdn of local site"
#     default = []
# }

# variable "point_to_site_adress_prefixes" {
#     type = list(string)
#     description = "Provide Site address_prefixs for remote site"
#     default = []
# }

# variable "point_to_site_vpn_auth_types" {
#     type = list(string)
#     description = "Provite vpn_auth_types"
#     default = []
# }

# variable "point_to_site_certificate_data" {
#     description = "certificate data"
#     default = null
# }

# variable "point_to_site_scale_unit" {
#     type = number
#     description = "Provite scale_unit"
#     default = 1
# }
