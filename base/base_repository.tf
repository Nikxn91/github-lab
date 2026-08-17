resource "github_repository" "tf_github_lab_base_repository" {
  name        = "tf-lab-devops"
  description = "${local.github_owner}, repository for DevOps team"

  visibility           = "private"
  vulnerability_alerts = true
  auto_init            = true
}
