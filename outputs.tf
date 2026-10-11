output "cloud_provider_access_authorizations_id" {
  description = "Map of id values across all cloud_provider_access_authorizations, keyed the same as var.cloud_provider_access_authorizations except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_cloud_provider_access_authorization.cloud_provider_access_authorizations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_provider_access_authorizations_authorized_date" {
  description = "Map of authorized_date values across all cloud_provider_access_authorizations, keyed the same as var.cloud_provider_access_authorizations except keys with no authorized_date are omitted"
  value       = { for k, v in mongodbatlas_cloud_provider_access_authorization.cloud_provider_access_authorizations : k => v.authorized_date if v.authorized_date != null && length(v.authorized_date) > 0 }
}
output "cloud_provider_access_authorizations_aws" {
  description = "Map of aws values across all cloud_provider_access_authorizations, keyed the same as var.cloud_provider_access_authorizations except keys with no aws are omitted"
  value       = { for k, v in mongodbatlas_cloud_provider_access_authorization.cloud_provider_access_authorizations : k => one(v.aws) if v.aws != null && length(v.aws) > 0 }
}
output "cloud_provider_access_authorizations_azure" {
  description = "Map of azure values across all cloud_provider_access_authorizations, keyed the same as var.cloud_provider_access_authorizations except keys with no azure are omitted"
  value       = { for k, v in mongodbatlas_cloud_provider_access_authorization.cloud_provider_access_authorizations : k => one(v.azure) if v.azure != null && length(v.azure) > 0 }
}
output "cloud_provider_access_authorizations_feature_usages" {
  description = "Map of feature_usages values across all cloud_provider_access_authorizations, keyed the same as var.cloud_provider_access_authorizations except keys with no feature_usages are omitted"
  value       = { for k, v in mongodbatlas_cloud_provider_access_authorization.cloud_provider_access_authorizations : k => v.feature_usages if v.feature_usages != null && length(v.feature_usages) > 0 }
}
output "cloud_provider_access_authorizations_gcp" {
  description = "Map of gcp values across all cloud_provider_access_authorizations, keyed the same as var.cloud_provider_access_authorizations except keys with no gcp are omitted"
  value       = { for k, v in mongodbatlas_cloud_provider_access_authorization.cloud_provider_access_authorizations : k => v.gcp if v.gcp != null && length(v.gcp) > 0 }
}
output "cloud_provider_access_authorizations_project_id" {
  description = "Map of project_id values across all cloud_provider_access_authorizations, keyed the same as var.cloud_provider_access_authorizations except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_cloud_provider_access_authorization.cloud_provider_access_authorizations : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "cloud_provider_access_authorizations_role_id" {
  description = "Map of role_id values across all cloud_provider_access_authorizations, keyed the same as var.cloud_provider_access_authorizations except keys with no role_id are omitted"
  value       = { for k, v in mongodbatlas_cloud_provider_access_authorization.cloud_provider_access_authorizations : k => v.role_id if v.role_id != null && length(v.role_id) > 0 }
}

