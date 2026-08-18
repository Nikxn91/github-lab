module "devops" {
  source = "./modules/repository"

  name        = "tf-lab-devops"
  description = "${local.github_owner}, repository for DevOps team"
  visibility  = "private"

  auto_init            = true
  vulnerability_alerts = true

  has_issues   = false
  has_projects = false
  has_wiki     = false

  allow_squash_merge     = true
  allow_merge_commit     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = false

  team_permissions          = {}
  protected_branches        = []
  organization_secret_names = []
  repository_secrets        = {}
}
