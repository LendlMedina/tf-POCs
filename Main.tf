# ARM provider block -rekhu
provider "azurerm" {
  version = "~>2.0"
  features {}
}
# Terraform backend configuration block -precreated
terraform {
  backend "azurerm" {
    resource_group_name  = "storagesamles-rg"
    storage_account_name = "lendltftest"
    container_name       = "tfstate"
    key                  = "ADF.tfstate"
  }
}