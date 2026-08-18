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
  count = length(var.devops_team_membership)

  team_id  = github_team.devops_team.id
  username = var.devops_team_membership[count.index]
  role     = "member"

  # GitHub reports organization Owners as team maintainers, even if their
  # requested team role is "member". Avoid a perpetual role-drift diff.
  lifecycle {
    ignore_changes = [role]
  }
}

resource "github_team_membership" "nodejs_team_membership" {
  count = length(var.nodejs_team_membership)

  team_id  = github_team.nodejs_team.id
  username = var.nodejs_team_membership[count.index]
  role     = "member"
}

resource "github_team_membership" "security_team_membership" {
  count = length(var.security_team_membership)

  team_id  = github_team.security_team.id
  username = var.security_team_membership[count.index]
  role     = "member"
}
