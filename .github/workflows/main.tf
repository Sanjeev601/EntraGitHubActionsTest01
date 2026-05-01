provider "azuread" {}

resource "azuread_application" "TestApp" {
  display_name     = "TestApp"
  sign_in_audience = "AzureADMyOrg"
}

resource "azuread_service_principal" "app_sp" {
  client_id = azuread_application.TestApp.application_id
}