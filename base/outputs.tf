output "organization_id" {
  description = "GitHub organization id"
  value       = github_organization_settings.organization_settings.id
}

output "teams_ids" {
  description = "Set of the organization teams ids"
  value = toset([
    tostring(github_team.devops_team.id),
    tostring(github_team.nodejs_team.id),
    tostring(github_team.security_team.id),
  ])
}

output "security_manager_team_slug" {
  description = "Slug of the team assigned as organization security manager"
  value       = github_team.security_team.slug
}

output "secret_names" {
  description = "Set of the organization Actions secret names"
  value = toset([
    github_actions_organization_secret.username.secret_name,
    github_actions_organization_secret.password.secret_name,
  ])
}

output "base_repository_name" {
  description = "Name of the DevOps team repository"
  value       = github_repository.tf_github_lab_base_repository.name
}
