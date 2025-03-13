output "vnet_id" {
  description = "The ID of the created Virtual Network"
  value       = azurerm_virtual_network.this.id
}

output "subnet_id" {
  description = "The ID of the created Subnet"
  value       = azurerm_subnet.this.id
}

output "nsg_id" {
  description = "The ID of the created Network Security Group"
  value       = azurerm_network_security_group.this.id
}