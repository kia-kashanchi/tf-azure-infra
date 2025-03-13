variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
  default     = "dev-rg"
}

variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "dev-vnet"
}

variable "address_space" {
  description = "The address space for the VNET"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
  default     = "dev-subnet"
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the Subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default     = "dev-nsg"
}

variable "tags" {
  description = "Tags to associate with the resources"
  type        = map(string)
  default     = { Environment = "Development" }
}