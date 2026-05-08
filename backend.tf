  
  terraform {  
  
  backend "azurerm" {
      subscription_id = "10d5d510-e3f2-4723-a675-7e2c9ff55b8d"
      tenant_id = "d7b0e3f5-2f4e-481a-a5f6-66bfb6a98055"
      resource_group_name  = "dev-rg"
      storage_account_name = "tfstateert"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
      use_azuread_auth = true
  }

  }