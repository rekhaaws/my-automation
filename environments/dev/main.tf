## configure Azure Provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.40.0"
    }
  }
}
provider "azurerm" {
  features {}
}
##configured backend to store the tfstate file on azure storage account
terraform {
  backend "azurerm" {
    resource_group_name  = "RG-terraform-state"
    storage_account_name = "githubactionstate"
    container_name       = "tf-state"
    key                  = "prod.terraform.tfstate"
    access_key           = "rdb+h+FFHLCkNicSHXjuW2R68esvJZqS6TYG7J5J1K75XPpGXLYJV7yXDdOnyMOOlqHsTRbtrjIu+AStRsjSKA=="
  }
}


module "workload" {
    source  = "../../modules/workload"
    rgname                        = var.rgname
    vnetname                      = var.vnetname
    location                      = var.location
    address_space                 = var.address_space
    tags                          = var.tags
    snet_name                     = var.snet_name
    address_prefixes              = var.address_prefixes
}

  
