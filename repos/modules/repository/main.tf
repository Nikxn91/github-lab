resource "github_repository" "this" {
  name        = var.name
  description = var.description

  visibility           = var.visibility
  auto_init            = var.auto_init
  vulnerability_alerts = var.vulnerability_alerts

  has_issues   = var.has_issues
  has_projects = var.has_projects
  has_wiki     = var.has_wiki

  allow_squash_merge     = var.allow_squash_merge
  allow_merge_commit     = var.allow_merge_commit
  allow_rebase_merge     = var.allow_rebase_merge
  delete_branch_on_merge = var.delete_branch_on_merge
}

resource "github_team_repository" "team" {
  for_each = var.team_permissions

  team_id    = each.key
  repository = github_repository.this.name
  permission = each.value
}

# The inputs below make the module ready for future repository-security work:
# - protected_branches: branch protection/ruleset definitions
# - organization_secret_names: organization secrets intended for this repository
# - repository_secrets: repository-specific Actions secrets
#
# They are deliberately empty for the current lab repositories. Organization
# secret access is currently owned by the base configuration (Task 13), so this
# module does not duplicate/conflict with that ownership.
