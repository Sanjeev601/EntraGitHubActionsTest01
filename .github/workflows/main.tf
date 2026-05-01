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

# 2. Create the Application
resource "azuread_application" "gh_app" {
  display_name = "AppRegistrationsByGitHubActions"
}