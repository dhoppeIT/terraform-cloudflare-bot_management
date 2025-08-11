module "cloudflare_bot_management" {
  source = "../../"

  zone_id = data.cloudflare_zones.this.result[0].id
}
