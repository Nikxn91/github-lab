data "github_organization" "organization" {
  name = local.github_owner
}

data "github_organization_teams" "organization_teams" {}
