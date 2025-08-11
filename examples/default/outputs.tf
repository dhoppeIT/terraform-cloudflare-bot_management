output "id" {
  description = "Identifier"
  value       = module.cloudflare_bot_management.id
}

output "stale_zone_configuration" {
  description = "A read-only field that shows which unauthorized settings are currently active on the zone"
  value       = module.cloudflare_bot_management.stale_zone_configuration
}

output "using_latest_model" {
  description = "A read-only field that indicates whether the zone currently is running the latest ML model"
  value       = module.cloudflare_bot_management.using_latest_model
}
