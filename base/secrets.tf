resource "github_actions_organization_secret" "username" {
  secret_name = "USERNAME"
  visibility  = "selected"
  value       = var.username
}

resource "github_actions_organization_secret" "password" {
  secret_name = "PASSWORD"
  visibility  = "selected"
  value       = var.password
}
