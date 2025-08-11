variable "zone_id" {
  type        = string
  description = "Identifier"
}

variable "ai_bots_protection" {
  type        = string
  default     = "block"
  description = "Enable rule to block AI Scrapers and Crawlers"

  validation {
    condition     = contains(["block", "disabled", "only_on_ad_pages"], var.ai_bots_protection)
    error_message = "Valid values are block, disabled, only_on_ad_pages"
  }
}

# variable "auto_update_model" {
#   type        = bool
#   default     = true
#   description = "Automatically update to the newest bot detection models created by Cloudflare as they are released"
# }

variable "crawler_protection" {
  type        = string
  default     = "disabled"
  description = "Enable rule to punish AI Scrapers and Crawlers via a link maze"

  validation {
    condition     = contains(["enabled", "disabled"], var.crawler_protection)
    error_message = "Valid values are enabled, disabled"
  }
}

variable "enable_js" {
  type        = bool
  default     = false
  description = "Use lightweight, invisible JavaScript detections to improve Bot Management"
}

variable "fight_mode" {
  type        = bool
  default     = false
  description = "Whether to enable Bot Fight Mode"
}

# variable "optimize_wordpress" {
#   type        = bool
#   default     = false
#   description = "Whether to optimize Super Bot Fight Mode protections for Wordpress"
# }
#
# variable "sbfm_definitely_automated" {
#   type        = string
#   default     = "block"
#   description = "Super Bot Fight Mode (SBFM) action to take on definitely automated requests"
#
#   validation {
#     condition     = contains(["allow", "block", "managed_challenge"], var.sbfm_definitely_automated)
#     error_message = "Valid values are allow, block, managed_challenge"
#   }
# }
#
# variable "sbfm_likely_automated" {
#   type        = string
#   default     = "block"
#   description = "Super Bot Fight Mode (SBFM) action to take on likely automated requests"
#
#   validation {
#     condition     = contains(["allow", "block", "managed_challenge"], var.sbfm_likely_automated)
#     error_message = "Valid values are allow, block, managed_challenge"
#   }
# }
#
# variable "sbfm_static_resource_protection" {
#   type        = bool
#   default     = true
#   description = "Super Bot Fight Mode (SBFM) to enable static resource protection"
# }
#
# variable "sbfm_verified_bots" {
#   type        = string
#   default     = "block"
#   description = "Super Bot Fight Mode (SBFM) action to take on verified bots requests"
#
#   validation {
#     condition     = contains(["allow", "block"], var.sbfm_verified_bots)
#     error_message = "Valid values are allow, block"
#   }
# }
#
# variable "suppress_session_score" {
#   type        = bool
#   default     = false
#   description = "Whether to disable tracking the highest bot score for a session in the Bot Management cookie"
# }
