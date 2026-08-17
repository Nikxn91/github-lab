resource "github_team" "devops_team" {
  name        = "devops-team"
  description = "DevOps team for ${local.github_owner} organization"
  privacy     = "secret"
}

resource "github_team" "nodejs_team" {
  name        = "nodejs-team"
  description = "NodeJS team for ${local.github_owner} organization"
  privacy     = "secret"
}

resource "github_team_membership" "devops_team_membership" {
  team_id  = github_team.devops_team.id
  username = local.team_member
  role     = "member"

  # GitHub always reports organization Owners as team "maintainer",
  # so the desired role "member" can never be reflected back for this
  # user. Ignoring the drift keeps the plan converged.
  lifecycle {
    ignore_changes = [role]
  }
}
