terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.56.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstateRG"
    storage_account_name = "testterraaks1889p"
    container_name       = "terra"
    key                  = "terraformgithubexample.tfstate"
  }
}

provider "azurerm" {
    skip_provider_registration = "true"
    features {}
}