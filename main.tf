module "resource_group" {
  source   = "./terraformModules/modules/RG"
  name     = var.resource_group_name
  location = var.location
  //tags     = var.tags
}

module "virtual_network" {
  source              = "./terraformModules/modules/Vnet"
  vnet_name           = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  subnets = [{
        
        name  = "example-subnet"
        address_prefix = ["10.0.1.0/24"]
        },
        {
        name   = "example-subnet2"
        address_prefix = ["10.0.2.0/24"]
        }
  ]
}

