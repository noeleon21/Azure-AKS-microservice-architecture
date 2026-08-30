terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90"
    }
  }

     backend "azurerm" {
        resource_group_name  = "rg-terraform-state-28283"
        storage_account_name = "tfstate6363"
        container_name       = "tfstate"
        key                  = "azure_aks_terraform.tfstate"
        use_oidc = true
      }
}

provider "azurerm" {
  features {}
}
