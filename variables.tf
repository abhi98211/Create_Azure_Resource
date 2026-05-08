variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "example-rg"
}

variable "location" {
  description = "Azure region for the Resource Group"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags to assign to the Resource Group"
  type        = map(string)
  default = {
    environment = "dev"
    owner       = "infra-team"
  }
}

variable "subnets" {
  type = map(object({
    name = string
    address_prefixes = list(string)
  }))
  default = {
    example-subnet1 = {
      name             = "example-subnet1"
      address_prefixes = ["10.0.1.0/24"]
    }
    example-subnet2 = {
      name             = "example-subnet2"
      address_prefixes = ["10.0.2.0/24"]
    }
  }
}
