variable "digital_twins_instances" {
  description = <<EOT
Map of digital_twins_instances, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - tags
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    tags                = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_instances : (
        length(v.name) >= 3
      )
    ])
    error_message = "[from validate.DigitalTwinsInstanceName: invalid when len(value) < 3]"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_instances : (
        length(v.name) <= 63
      )
    ])
    error_message = "[from validate.DigitalTwinsInstanceName: invalid when len(value) > 63]"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_instances : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_instances : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_instances : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.digital_twins_instances : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

