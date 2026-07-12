output "digital_twins_instances_host_name" {
  description = "Map of host_name values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.host_name }
}
output "digital_twins_instances_identity" {
  description = "Map of identity values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.identity }
}
output "digital_twins_instances_location" {
  description = "Map of location values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.location }
}
output "digital_twins_instances_name" {
  description = "Map of name values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.name }
}
output "digital_twins_instances_resource_group_name" {
  description = "Map of resource_group_name values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.resource_group_name }
}
output "digital_twins_instances_tags" {
  description = "Map of tags values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.tags }
}

