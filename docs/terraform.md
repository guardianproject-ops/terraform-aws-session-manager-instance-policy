## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| attributes | Additional attributes (e.g., `one', or `two') | `list` | `[]` | no |
| delimiter | Delimiter to be used between `namespace`, `stage`, `name`, and `attributes` | `string` | `"-"` | no |
| environment | Environment (e.g. `test`, `dev`) | `string` | `""` | no |
| name | Name  (e.g. `app` or `database`) | `string` | n/a | yes |
| namespace | Namespace (e.g. `org`) | `string` | n/a | yes |
| s3\_bucket\_name | The name of bucket to store session logs. Specifying this enables writing session output to an Amazon S3 bucket. | `string` | n/a | yes |
| s3\_key\_prefix | To write output to a sub-folder, enter a sub-folder name. | `string` | n/a | yes |
| stage | Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release' | `string` | `""` | no |
| tags | Additional tags (e.g. map(`Visibility`,`Public`) | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| ec2\_session\_manager\_policy\_arn | ARN of the created policy that allows EC2 instances to be used by the session manager |

