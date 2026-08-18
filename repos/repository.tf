module "app" {
  source = "./modules/repository"

  name        = "tf-lab-app"
  description = "TF GitHub lab repository for nodejs app"
  visibility  = "public"

  auto_init            = true
  vulnerability_alerts = true

  has_issues   = true
  has_projects = true
  has_wiki     = true

  allow_squash_merge     = true
  allow_merge_commit     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true

  team_permissions = local.app_repository_team_permissions

  protected_branches        = []
  organization_secret_names = ["USERNAME", "PASSWORD"]
  repository_secrets        = {}
}

resource "github_repository_file" "tf_github_lab_app_repository_codeowners" {
  repository = module.app.name
  branch     = "main"
  file       = ".github/CODEOWNERS"

  content = "* @${local.github_owner}/${local.security_team_slug}\n"

  commit_message      = "chore: add CODEOWNERS managed by terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform@tf-lab.local"
  overwrite_on_create = true
}
