resource "mongodbatlas_cloud_provider_access_authorization" "cloud_provider_access_authorizations" {
  for_each = var.cloud_provider_access_authorizations

  project_id = each.value.project_id
  role_id    = each.value.role_id

  dynamic "aws" {
    for_each = each.value.aws != null ? [each.value.aws] : []
    content {
      iam_assumed_role_arn = aws.value.iam_assumed_role_arn
    }
  }

  dynamic "azure" {
    for_each = each.value.azure != null ? [each.value.azure] : []
    content {
      atlas_azure_app_id   = azure.value.atlas_azure_app_id
      service_principal_id = azure.value.service_principal_id
      tenant_id            = azure.value.tenant_id
    }
  }
}

