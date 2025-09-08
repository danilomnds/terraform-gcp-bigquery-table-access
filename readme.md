# Module - BigQuery Table Access
[![COE](https://img.shields.io/badge/Created%20By-CCoE-blue)]()[![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)[![GCP](https://img.shields.io/badge/provider-GCP-green)](https://registry.terraform.io/providers/hashicorp/google/latest)

Module developed to grant table access on BQ .

## Compatibility Matrix

| Module Version | Terraform Version | Google Version     |
|----------------|-------------------| ------------------ |
| v1.0.0         | v1.13.0           | 6.49.2             |

## Release Notes

| Module Version | Note | 
|----------------|------|
| v1.0.0 | Initial Version |

## Specifying a version

To avoid that your code get the latest module version, you can define the `?ref=***` in the URL to point to a specific version.
Note: The `?ref=***` refers a tag on the git module repo.

## Use case
```hcl
module "bq-table-access" {    
  source = "git::https://github.com/danilomnds/terraform-gcp-bigquery-table-access?ref=v1.0.0"
  dataset_id = "dataset_id"
  table_id = "table_id"
  member = "member"
  role = "role"
  project = "project_id"  
}
```
## Input variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| dataset_id | Used to find the parent resource to bind the IAM policy to | `string` | n/a | `Yes` |
| table_id | Used to find the parent resource to bind the IAM policy to | `string` | n/a | `Yes` |
| project | The ID of the project in which the resource belongs | `string` | n/a | No |
| members | list of azure AD groups that will use the resource | `string` | n/a | `Yes` |
| role | The role that should be applied| `string` | n/a | `Yes` |

## Documentation
BQ Table IAM: <br>
[https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_table_iam)