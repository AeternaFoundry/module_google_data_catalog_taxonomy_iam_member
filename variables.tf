variable "data_catalog_taxonomy_iam_members" {
  description = <<EOT
Map of data_catalog_taxonomy_iam_members, attributes below
Required:
    - member
    - role
    - taxonomy
Optional:
    - project
    - region
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member   = string
    role     = string
    taxonomy = string
    project  = optional(string)
    region   = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

