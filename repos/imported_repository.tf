resource "github_repository" "tf_github_lab_spa_repository" {
  name        = "tf-lab-spa"
  description = "TF GitHub lab repository for SPA app"

  visibility           = "public"
  vulnerability_alerts = true

  has_issues   = true
  has_projects = true
  has_wiki     = true

  allow_squash_merge     = true
  allow_merge_commit     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true
}
