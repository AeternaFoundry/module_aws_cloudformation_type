variable "cloudformation_types" {
  description = <<EOT
Map of cloudformation_types, attributes below
Required:
    - schema_handler_package
    - type_name
Optional:
    - execution_role_arn
    - region
    - type
    - logging_config (block):
        - log_group_name (required)
        - log_role_arn (required)
EOT

  type = map(object({
    schema_handler_package = string
    type_name              = string
    execution_role_arn     = optional(string)
    region                 = optional(string)
    type                   = optional(string)
    logging_config = optional(object({
      log_group_name = string
      log_role_arn   = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudformation_types : (
        can(regex("^(https|s3)\\:\\/\\/.+", v.schema_handler_package))
      )
    ])
    error_message = "must begin with s3:// or https://"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudformation_types : (
        (length(v.type_name) >= 10 && length(v.type_name) <= 204) && (can(regex("[0-9A-Za-z]{2,64}::[0-9A-Za-z]{2,64}::[0-9A-Za-z]{2,64}(::MODULE){0,1}", v.type_name)))
      )
    ])
    error_message = "all of: must be between 10 and 204 characters; three alphanumeric character sections separated by double colons (::)"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

