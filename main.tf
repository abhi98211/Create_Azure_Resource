module "resource_group" {
  source   = "./terraformModules/modules/RG"
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

