locals {
  github_owner = "tf-lab-nikolay-kostov"

  # Team slug => repository permission level
  app_repository_team_permissions = {
    "nodejs-team"   = "push"
    "security-team" = "push"
    "devops-team"   = "pull"
  }

  # Derive security team slug from live organization team discovery
  security_team_slug = one([
    for t in data.github_organization_teams.organization_teams.teams :
    t.slug if t.name == "security-team" || t.slug == "security-team"
  ])
}
