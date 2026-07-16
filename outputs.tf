output "digital_twins_instances_id" {
  description = "Map of id values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "digital_twins_instances_host_name" {
  description = "Map of host_name values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.host_name if v.host_name != null && length(v.host_name) > 0 }
}
output "digital_twins_instances_identity" {
  description = "Map of identity values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "digital_twins_instances_location" {
  description = "Map of location values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.location if v.location != null && length(v.location) > 0 }
}
output "digital_twins_instances_name" {
  description = "Map of name values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "digital_twins_instances_resource_group_name" {
  description = "Map of resource_group_name values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "digital_twins_instances_tags" {
  description = "Map of tags values across all digital_twins_instances, keyed the same as var.digital_twins_instances"
  value       = { for k, v in azurerm_digital_twins_instance.digital_twins_instances : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

