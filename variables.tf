variable "storagegateway_nfs_file_shares" {
  description = <<EOT
Map of storagegateway_nfs_file_shares, attributes below
Required:
    - client_list
    - gateway_arn
    - location_arn
    - role_arn
Optional:
    - audit_destination_arn
    - bucket_region
    - default_storage_class
    - file_share_name
    - guess_mime_type_enabled
    - kms_encrypted
    - kms_key_arn
    - notification_policy
    - object_acl
    - read_only
    - region
    - requester_pays
    - squash
    - tags
    - tags_all
    - vpc_endpoint_dns_name
    - cache_attributes (block):
        - cache_stale_timeout_in_seconds (optional)
    - nfs_file_share_defaults (block):
        - directory_mode (optional)
        - file_mode (optional)
        - group_id (optional)
        - owner_id (optional)
EOT

  type = map(object({
    client_list             = set(string)
    gateway_arn             = string
    location_arn            = string
    role_arn                = string
    tags                    = optional(map(string))
    squash                  = optional(string)
    requester_pays          = optional(bool)
    region                  = optional(string)
    read_only               = optional(bool)
    object_acl              = optional(string)
    notification_policy     = optional(string)
    kms_encrypted           = optional(bool)
    tags_all                = optional(map(string))
    guess_mime_type_enabled = optional(bool)
    file_share_name         = optional(string)
    default_storage_class   = optional(string)
    bucket_region           = optional(string)
    audit_destination_arn   = optional(string)
    kms_key_arn             = optional(string)
    vpc_endpoint_dns_name   = optional(string)
    cache_attributes = optional(object({
      cache_stale_timeout_in_seconds = optional(number)
    }))
    nfs_file_share_defaults = optional(object({
      directory_mode = optional(string)
      file_mode      = optional(string)
      group_id       = optional(string)
      owner_id       = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_nfs_file_shares : (
        v.cache_attributes == null || (v.cache_attributes.cache_stale_timeout_in_seconds == null || (v.cache_attributes.cache_stale_timeout_in_seconds >= 300 && v.cache_attributes.cache_stale_timeout_in_seconds <= 2592000))
      )
    ])
    error_message = "must be between 300 and 2592000"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_nfs_file_shares : (
        v.file_share_name == null || (length(v.file_share_name) >= 1 && length(v.file_share_name) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_nfs_file_shares : (
        v.notification_policy == null || ((can(regex("^\\{[\\w\\s:\\{\\}\\[\\]\"]*}$", v.notification_policy))) && (length(v.notification_policy) >= 2 && length(v.notification_policy) <= 100))
      )
    ])
    error_message = "all of: must be between 2 and 100 characters"
  }
  # Note: 15 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

