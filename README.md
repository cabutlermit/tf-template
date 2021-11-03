# tf-template

Template for Terraform repos for MIT Libraries.

After deploying this, the following steps must be completed.

1. Update the `terraform { }` block in `main.tf` to name the correct workspace in Terraform Cloud.
1. Update `main.tf` to include necessary Terraform Provider(s).
1. Update the `terraform { required_providers { } }` block `versions.tf` to set the location and constraints on the providers.

## File Tree

```bash
.
├── LICENSE
├── README.md
├── main.tf
├── variables.tf
└── versions.tf
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | The name of the environment/stage/workspace (e.g., `stage`, `prod`, `dev`) | `string` | n/a | yes |
| mitlib | The shortname name of our MITLibraries Organization | `string` | `"mitlib"` | no |
| name | The name of the app/resource this repo builds | `string` | n/a | yes |
| ou | The name of the AWS OU that contains the AWS Accounts that are managed by this code. | `string` | n/a | yes |
