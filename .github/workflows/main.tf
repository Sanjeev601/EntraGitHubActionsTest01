# 1. The Provider
terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.53"
    }
  }
}

provider "azuread" {}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "app_name" {
  description = "App registration name"
  type        = string
  default     = "AppRegistrationsByGitHubActions"
}

# 2. Create the Application
resource "azuread_application" "gh_app" {
  display_name = "${var.app_name}-${var.environment}"
}