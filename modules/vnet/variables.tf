variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "location" {
  description = "The Azure region where the VNET will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "address_space" {
  description = "The address space for the VNET"
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the Subnet"
  type        = list(string)
}

variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
}

variable "tags" {
  description = "Tags to associate with the resources"
  type        = map(string)
  default     = {}
}