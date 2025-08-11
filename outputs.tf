output "id" {
  description = "Identifier"
  value       = cloudflare_bot_management.this.id
}

output "stale_zone_configuration" {
  description = "A read-only field that shows which unauthorized settings are currently active on the zone"
  value       = cloudflare_bot_management.this.stale_zone_configuration
}

output "using_latest_model" {
  description = "A read-only field that indicates whether the zone currently is running the latest ML model"
  value       = cloudflare_bot_management.this.using_latest_model
}
