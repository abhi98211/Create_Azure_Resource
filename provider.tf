terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "10d5d510-e3f2-4723-a675-7e2c9ff55b8d"
    tenant_id = "d7b0e3f5-2f4e-481a-a5f6-66bfb6a98055"
    #client_id = "bb5c1baa-b47b-4275-b9d5-e35b310f7ccd"
    use_oidc = true
  features {}
}
