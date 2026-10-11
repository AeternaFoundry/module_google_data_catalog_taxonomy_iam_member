resource "google_data_catalog_taxonomy_iam_member" "data_catalog_taxonomy_iam_members" {
  for_each = var.data_catalog_taxonomy_iam_members

  member   = each.value.member
  role     = each.value.role
  taxonomy = each.value.taxonomy
  project  = each.value.project
  region   = each.value.region

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

