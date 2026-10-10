output "cloudformation_types_id" {
  description = "Map of id values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudformation_types_arn" {
  description = "Map of arn values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudformation_types_default_version_id" {
  description = "Map of default_version_id values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.default_version_id if v.default_version_id != null && length(v.default_version_id) > 0 }
}
output "cloudformation_types_deprecated_status" {
  description = "Map of deprecated_status values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.deprecated_status if v.deprecated_status != null && length(v.deprecated_status) > 0 }
}
output "cloudformation_types_description" {
  description = "Map of description values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloudformation_types_documentation_url" {
  description = "Map of documentation_url values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.documentation_url if v.documentation_url != null && length(v.documentation_url) > 0 }
}
output "cloudformation_types_execution_role_arn" {
  description = "Map of execution_role_arn values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.execution_role_arn if v.execution_role_arn != null && length(v.execution_role_arn) > 0 }
}
output "cloudformation_types_is_default_version" {
  description = "Map of is_default_version values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.is_default_version if v.is_default_version != null }
}
output "cloudformation_types_logging_config" {
  description = "Map of logging_config values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => one(v.logging_config) if v.logging_config != null && length(v.logging_config) > 0 }
}
output "cloudformation_types_provisioning_type" {
  description = "Map of provisioning_type values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.provisioning_type if v.provisioning_type != null && length(v.provisioning_type) > 0 }
}
output "cloudformation_types_region" {
  description = "Map of region values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudformation_types_schema" {
  description = "Map of schema values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "cloudformation_types_schema_handler_package" {
  description = "Map of schema_handler_package values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.schema_handler_package if v.schema_handler_package != null && length(v.schema_handler_package) > 0 }
}
output "cloudformation_types_source_url" {
  description = "Map of source_url values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.source_url if v.source_url != null && length(v.source_url) > 0 }
}
output "cloudformation_types_type" {
  description = "Map of type values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.type if v.type != null && length(v.type) > 0 }
}
output "cloudformation_types_type_arn" {
  description = "Map of type_arn values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.type_arn if v.type_arn != null && length(v.type_arn) > 0 }
}
output "cloudformation_types_type_name" {
  description = "Map of type_name values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.type_name if v.type_name != null && length(v.type_name) > 0 }
}
output "cloudformation_types_version_id" {
  description = "Map of version_id values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.version_id if v.version_id != null && length(v.version_id) > 0 }
}
output "cloudformation_types_visibility" {
  description = "Map of visibility values across all cloudformation_types, keyed the same as var.cloudformation_types"
  value       = { for k, v in aws_cloudformation_type.cloudformation_types : k => v.visibility if v.visibility != null && length(v.visibility) > 0 }
}

