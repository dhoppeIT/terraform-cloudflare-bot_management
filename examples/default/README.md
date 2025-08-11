# Example

The configuration in this directory creates:

* cloudflare_bot_management

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudflare_bot_management"></a> [cloudflare\_bot\_management](#module\_cloudflare\_bot\_management) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [cloudflare_zones.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_key"></a> [api\_key](#input\_api\_key) | The API key for operations | `string` | `null` | no |
| <a name="input_api_token"></a> [api\_token](#input\_api\_token) | The API Token for operations | `string` | `null` | no |
| <a name="input_api_user_service_key"></a> [api\_user\_service\_key](#input\_api\_user\_service\_key) | A special Cloudflare API key good for a restricted set of endpoints | `string` | `null` | no |
| <a name="input_base_url"></a> [base\_url](#input\_base\_url) | Value to override the default HTTP client base URL | `string` | `null` | no |
| <a name="input_email"></a> [email](#input\_email) | A registered Cloudflare email address | `string` | `null` | no |
| <a name="input_user_agent_operator_suffix"></a> [user\_agent\_operator\_suffix](#input\_user\_agent\_operator\_suffix) | A value to append to the HTTP User Agent for all API calls | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Identifier |
| <a name="output_stale_zone_configuration"></a> [stale\_zone\_configuration](#output\_stale\_zone\_configuration) | A read-only field that shows which unauthorized settings are currently active on the zone |
| <a name="output_using_latest_model"></a> [using\_latest\_model](#output\_using\_latest\_model) | A read-only field that indicates whether the zone currently is running the latest ML model |
<!-- END_TF_DOCS -->
