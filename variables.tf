variable "cloud_provider_access_authorizations" {
  description = <<EOT
Map of cloud_provider_access_authorizations, attributes below
Required:
    - project_id
    - role_id
Optional:
    - aws (block):
        - iam_assumed_role_arn (required)
    - azure (block):
        - atlas_azure_app_id (required)
        - service_principal_id (required)
        - tenant_id (required)
EOT

  type = map(object({
    project_id = string
    role_id    = string
    aws = optional(object({
      iam_assumed_role_arn = string
    }))
    azure = optional(object({
      atlas_azure_app_id   = string
      service_principal_id = string
      tenant_id            = string
    }))
  }))
}

