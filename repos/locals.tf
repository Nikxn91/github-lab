locals {
  github_owner = "tf-lab-nikolay-kostov"

  # Team slug => repository permission level
  app_repository_team_permissions = {
    "nodejs-team"   = "push"
    "security-team" = "push"
    "devops-team"   = "pull"
  }
}
