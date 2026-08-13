output "storagegateway_nfs_file_shares_id" {
  description = "Map of id values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storagegateway_nfs_file_shares_arn" {
  description = "Map of arn values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "storagegateway_nfs_file_shares_audit_destination_arn" {
  description = "Map of audit_destination_arn values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.audit_destination_arn if v.audit_destination_arn != null && length(v.audit_destination_arn) > 0 }
}
output "storagegateway_nfs_file_shares_bucket_region" {
  description = "Map of bucket_region values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.bucket_region if v.bucket_region != null && length(v.bucket_region) > 0 }
}
output "storagegateway_nfs_file_shares_cache_attributes" {
  description = "Map of cache_attributes values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.cache_attributes if v.cache_attributes != null && length(v.cache_attributes) > 0 }
}
output "storagegateway_nfs_file_shares_client_list" {
  description = "Map of client_list values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.client_list if v.client_list != null && length(v.client_list) > 0 }
}
output "storagegateway_nfs_file_shares_default_storage_class" {
  description = "Map of default_storage_class values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.default_storage_class if v.default_storage_class != null && length(v.default_storage_class) > 0 }
}
output "storagegateway_nfs_file_shares_file_share_name" {
  description = "Map of file_share_name values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.file_share_name if v.file_share_name != null && length(v.file_share_name) > 0 }
}
output "storagegateway_nfs_file_shares_fileshare_id" {
  description = "Map of fileshare_id values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.fileshare_id if v.fileshare_id != null && length(v.fileshare_id) > 0 }
}
output "storagegateway_nfs_file_shares_gateway_arn" {
  description = "Map of gateway_arn values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.gateway_arn if v.gateway_arn != null && length(v.gateway_arn) > 0 }
}
output "storagegateway_nfs_file_shares_guess_mime_type_enabled" {
  description = "Map of guess_mime_type_enabled values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.guess_mime_type_enabled if v.guess_mime_type_enabled != null }
}
output "storagegateway_nfs_file_shares_kms_encrypted" {
  description = "Map of kms_encrypted values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.kms_encrypted if v.kms_encrypted != null }
}
output "storagegateway_nfs_file_shares_kms_key_arn" {
  description = "Map of kms_key_arn values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "storagegateway_nfs_file_shares_location_arn" {
  description = "Map of location_arn values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.location_arn if v.location_arn != null && length(v.location_arn) > 0 }
}
output "storagegateway_nfs_file_shares_nfs_file_share_defaults" {
  description = "Map of nfs_file_share_defaults values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.nfs_file_share_defaults if v.nfs_file_share_defaults != null && length(v.nfs_file_share_defaults) > 0 }
}
output "storagegateway_nfs_file_shares_notification_policy" {
  description = "Map of notification_policy values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.notification_policy if v.notification_policy != null && length(v.notification_policy) > 0 }
}
output "storagegateway_nfs_file_shares_object_acl" {
  description = "Map of object_acl values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.object_acl if v.object_acl != null && length(v.object_acl) > 0 }
}
output "storagegateway_nfs_file_shares_path" {
  description = "Map of path values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.path if v.path != null && length(v.path) > 0 }
}
output "storagegateway_nfs_file_shares_read_only" {
  description = "Map of read_only values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.read_only if v.read_only != null }
}
output "storagegateway_nfs_file_shares_region" {
  description = "Map of region values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.region if v.region != null && length(v.region) > 0 }
}
output "storagegateway_nfs_file_shares_requester_pays" {
  description = "Map of requester_pays values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.requester_pays if v.requester_pays != null }
}
output "storagegateway_nfs_file_shares_role_arn" {
  description = "Map of role_arn values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "storagegateway_nfs_file_shares_squash" {
  description = "Map of squash values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.squash if v.squash != null && length(v.squash) > 0 }
}
output "storagegateway_nfs_file_shares_tags" {
  description = "Map of tags values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "storagegateway_nfs_file_shares_tags_all" {
  description = "Map of tags_all values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "storagegateway_nfs_file_shares_vpc_endpoint_dns_name" {
  description = "Map of vpc_endpoint_dns_name values across all storagegateway_nfs_file_shares, keyed the same as var.storagegateway_nfs_file_shares"
  value       = { for k, v in aws_storagegateway_nfs_file_share.storagegateway_nfs_file_shares : k => v.vpc_endpoint_dns_name if v.vpc_endpoint_dns_name != null && length(v.vpc_endpoint_dns_name) > 0 }
}

