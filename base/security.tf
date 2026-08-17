resource "github_team" "security_team" {
  name        = "security-team"
  description = "Security team for ${local.github_owner} organization"
  privacy     = "closed"
}

resource "github_organization_role_team" "security_manager" {
  role_id   = local.security_manager_role_id
  team_slug = github_team.security_team.slug
}
