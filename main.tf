resource "cloudflare_bot_management" "this" {
  zone_id            = var.zone_id
  ai_bots_protection = var.ai_bots_protection
  # auto_update_model               = var.auto_update_model
  crawler_protection = var.crawler_protection
  enable_js          = var.enable_js
  fight_mode         = var.fight_mode
  # optimize_wordpress              = var.optimize_wordpress
  # sbfm_definitely_automated       = var.sbfm_definitely_automated
  # sbfm_likely_automated           = var.sbfm_likely_automated
  # sbfm_static_resource_protection = var.sbfm_static_resource_protection
  # sbfm_verified_bots              = var.sbfm_verified_bots
  # suppress_session_score          = var.suppress_session_score
}
