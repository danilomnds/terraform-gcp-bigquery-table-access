# Module - BigQuery Table Access
[![COE](https://img.shields.io/badge/Created%20By-CCoE-blue)]()[![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)[![GCP](https://img.shields.io/badge/provider-GCP-green)](https://registry.terraform.io/providers/hashicorp/google/latest)

This module grants IAM access to a specific BigQuery table using Terraform.

## Compatibility Matrix

| Module Version | Terraform Version | Google Provider Version |
|----------------|------------------|------------------------|
| v1.0.0         | v1.13.0          | 6.49.2                 |
| v1.1.0         | v1.13.3          | 7.4.0                  |

## Release Notes

| Module Version | Note                                             |
|----------------|--------------------------------------------------|
| v1.0.0         | Initial version                                  |
| v1.1.0         | Updated provider to 7.4.0 and Terraform to 1.13.3|

## Specifying a Version

To avoid using the latest module version by default, specify the `?ref=***` in the source URL to pin a version (where `***` is a git tag).
Note: The `?ref=***` refers to a tag in the git module repository.

## Example Usage

```hcl
module "bq-table-access" {    
  source     = "git::https://github.com/danilomnds/terraform-gcp-bigquery-table-access?ref=v1.0.0"
  dataset_id = "dataset_id"
  table_id   = "table_id"
  member     = "member"
  role       = "role"
  project    = "project_id"  
}
```

## Input Variables

| Name       | Description                                                        | Type     | Default | Required |
|------------|--------------------------------------------------------------------|----------|---------|:--------:|
| dataset_id | The BigQuery dataset containing the table to bind the IAM policy to | `string` | n/a     | Yes      |
| table_id   | The BigQuery table to bind the IAM policy to                       | `string` | n/a     | Yes      |
| project    | The ID of the project in which the resource belongs                | `string` | n/a     | No       |
| member     | The member (user, group, or service account) to grant access       | `string` | n/a     | Yes      |
| role       | The IAM role to assign to the member                               | `string` | n/a     | Yes      |

## Documentation

BigQuery Table IAM:  
[https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_table_iam](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_table_iam)