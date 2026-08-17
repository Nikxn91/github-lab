resource "github_repository" "tf_github_lab_app_repository" {
  name        = "tf-lab-app"
  description = "TF GitHub lab repository for nodejs app"

  visibility           = "public"
  vulnerability_alerts = true

  has_issues   = true
  has_projects = true
  has_wiki     = true

  allow_squash_merge     = true
  allow_merge_commit     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true

  auto_init = true
}

resource "github_team_repository" "tf_github_lab_app_repository" {
  for_each = local.app_repository_team_permissions

  team_id    = each.key
  repository = github_repository.tf_github_lab_app_repository.name
  permission = each.value
}

resource "github_repository_file" "tf_github_lab_app_repository_codeowners" {
  repository = github_repository.tf_github_lab_app_repository.name
  branch     = "main"
  file       = ".github/CODEOWNERS"

  content = "* @${local.github_owner}/${local.security_team_slug}\n"

  commit_message      = "chore: add CODEOWNERS managed by terraform"
  commit_author       = "Terraform"
  commit_email        = "terraform@tf-lab.local"
  overwrite_on_create = true
}
