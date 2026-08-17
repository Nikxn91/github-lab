# Allow GitHub Actions to run only in tf-lab-app.
resource "github_actions_organization_permissions" "org" {
  enabled_repositories = "selected"
  allowed_actions      = "all"

  enabled_repositories_config {
    repository_ids = [
      data.github_repository.tf_lab_app.repo_id,
    ]
  }
}
