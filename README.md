# terraform-cloudflare-bot_management

Terraform module to manage the following Cloudflare resources:

* cloudflare_bot_management

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "cloudflare_account" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-cloudflare-account/local"
  version = "1.0.0"

  name = "dhoppeIT"
  type = "standard"
}

module "cloudflare_zone" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-cloudflare-zone/local"
  version = "1.0.0"

  account = {
    id = module.cloudflare_account.id
  }
  name = "dhoppe.dev"
}

module "cloudflare_bot_management" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-cloudflare-bot-management/local"
  version = "1.0.0"

  zone_id = module.cloudflare_zone["dhoppe.dev"].id
}
```

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

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_bot_management.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/bot_management) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ai_bots_protection"></a> [ai\_bots\_protection](#input\_ai\_bots\_protection) | Enable rule to block AI Scrapers and Crawlers | `string` | `"block"` | no |
| <a name="input_crawler_protection"></a> [crawler\_protection](#input\_crawler\_protection) | Enable rule to punish AI Scrapers and Crawlers via a link maze | `string` | `"disabled"` | no |
| <a name="input_enable_js"></a> [enable\_js](#input\_enable\_js) | Use lightweight, invisible JavaScript detections to improve Bot Management | `bool` | `false` | no |
| <a name="input_fight_mode"></a> [fight\_mode](#input\_fight\_mode) | Whether to enable Bot Fight Mode | `bool` | `false` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Identifier | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Identifier |
| <a name="output_stale_zone_configuration"></a> [stale\_zone\_configuration](#output\_stale\_zone\_configuration) | A read-only field that shows which unauthorized settings are currently active on the zone |
| <a name="output_using_latest_model"></a> [using\_latest\_model](#output\_using\_latest\_model) | A read-only field that indicates whether the zone currently is running the latest ML model |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
