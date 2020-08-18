# terraform-google-stackdriver-uptime

[![Lint Status](https://github.com/DNXLabs/terraform-google-stackdriver-uptime/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-google-stackdriver-uptime/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-google-stackdriver-uptime)](https://github.com/DNXLabs/terraform-google-stackdriver-uptime/blob/master/LICENSE)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.0 |

## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| channel\_email\_address | n/a | `any` | n/a | yes |
| channel\_slack\_name | n/a | `any` | n/a | yes |
| duration | The amount of time that a time series must violate the threshold to be considered failing. | `string` | `"120s"` | no |
| healthcheck\_path | The path to the page to run the check against. | `string` | `"/"` | no |
| hostname | n/a | `string` | `"www.google.com"` | no |
| name | friendly name for the uptime check configuration | `string` | `"Default"` | no |
| period | How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes) | `string` | `"60s"` | no |
| port | The port to the page to run the check against. | `string` | `"80"` | no |
| project\_id | n/a | `any` | n/a | yes |
| ssl | If true, use HTTPS instead of HTTP to run the check. | `bool` | `false` | no |
| threshold | The value against which to compare the time series | `string` | `"1.0"` | no |
| timeout | The maximum amount of time to wait for the request to complete | `string` | `"5s"` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Author
Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License
Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-google-stackdriver-uptime/blob/master/LICENSE) for full details.