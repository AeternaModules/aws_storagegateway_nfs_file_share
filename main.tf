resource "aws_storagegateway_nfs_file_share" "storagegateway_nfs_file_shares" {
  for_each = var.storagegateway_nfs_file_shares

  client_list             = each.value.client_list
  gateway_arn             = each.value.gateway_arn
  location_arn            = each.value.location_arn
  role_arn                = each.value.role_arn
  tags                    = each.value.tags
  squash                  = each.value.squash
  requester_pays          = each.value.requester_pays
  region                  = each.value.region
  read_only               = each.value.read_only
  object_acl              = each.value.object_acl
  notification_policy     = each.value.notification_policy
  kms_encrypted           = each.value.kms_encrypted
  tags_all                = each.value.tags_all
  guess_mime_type_enabled = each.value.guess_mime_type_enabled
  file_share_name         = each.value.file_share_name
  default_storage_class   = each.value.default_storage_class
  bucket_region           = each.value.bucket_region
  audit_destination_arn   = each.value.audit_destination_arn
  kms_key_arn             = each.value.kms_key_arn
  vpc_endpoint_dns_name   = each.value.vpc_endpoint_dns_name

  dynamic "cache_attributes" {
    for_each = each.value.cache_attributes != null ? [each.value.cache_attributes] : []
    content {
      cache_stale_timeout_in_seconds = cache_attributes.value.cache_stale_timeout_in_seconds
    }
  }

  dynamic "nfs_file_share_defaults" {
    for_each = each.value.nfs_file_share_defaults != null ? [each.value.nfs_file_share_defaults] : []
    content {
      directory_mode = nfs_file_share_defaults.value.directory_mode
      file_mode      = nfs_file_share_defaults.value.file_mode
      group_id       = nfs_file_share_defaults.value.group_id
      owner_id       = nfs_file_share_defaults.value.owner_id
    }
  }
}

