resource "google_bigquery_table_iam_member" "tableaccess" {
  dataset_id = var.dataset_id
  table_id   = var.table_id
  project    = var.project
  member     = var.member
  role       = var.role
  lifecycle {
    ignore_changes = []
  }
}