variable "identity_domains_my_auth_tokens" {
  description = <<EOT
Map of identity_domains_my_auth_tokens, attributes below
Required:
    - idcs_endpoint
    - schemas
Optional:
    - authorization
    - description
    - expires_on
    - ocid
    - resource_type_schema_version
    - status
    - tags (block):
        - key (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - user (block):
        - ocid (optional)
        - value (optional)
EOT

  type = map(object({
    idcs_endpoint                = string
    schemas                      = list(string)
    authorization                = optional(string)
    description                  = optional(string)
    expires_on                   = optional(string)
    ocid                         = optional(string)
    resource_type_schema_version = optional(string)
    status                       = optional(string)
    tags = optional(list(object({
      key   = string
      value = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    user = optional(object({
      ocid  = optional(string)
      value = optional(string)
    }))
  }))
}

