output "digital_twins_instances" {
  description = "All digital_twins_instance resources"
  value       = azurerm_digital_twins_instance.digital_twins_instances
}
output "digital_twins_instances_host_name" {
  description = "List of host_name values across all digital_twins_instances"
  value       = [for k, v in azurerm_digital_twins_instance.digital_twins_instances : v.host_name]
}
output "digital_twins_instances_identity" {
  description = "List of identity values across all digital_twins_instances"
  value       = [for k, v in azurerm_digital_twins_instance.digital_twins_instances : v.identity]
}
output "digital_twins_instances_location" {
  description = "List of location values across all digital_twins_instances"
  value       = [for k, v in azurerm_digital_twins_instance.digital_twins_instances : v.location]
}
output "digital_twins_instances_name" {
  description = "List of name values across all digital_twins_instances"
  value       = [for k, v in azurerm_digital_twins_instance.digital_twins_instances : v.name]
}
output "digital_twins_instances_resource_group_name" {
  description = "List of resource_group_name values across all digital_twins_instances"
  value       = [for k, v in azurerm_digital_twins_instance.digital_twins_instances : v.resource_group_name]
}
output "digital_twins_instances_tags" {
  description = "List of tags values across all digital_twins_instances"
  value       = [for k, v in azurerm_digital_twins_instance.digital_twins_instances : v.tags]
}

