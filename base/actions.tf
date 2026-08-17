# Discover all repositories in the organization so we can select them for Actions.
data "github_repositories" "org" {
  query           = "org:${local.github_owner}"
  include_repo_id = true
}

# GitHub Actions organization-level settings
resource "github_actions_organization_permissions" "org" {
  enabled_repositories = "selected"
  allowed_actions      = "all"

  enabled_repositories_config {
    repository_ids = data.github_repositories.org.repo_ids
  }
}
