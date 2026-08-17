locals {
  github_owner  = "tf-lab-nikolay-kostov"
  billing_email = "devops@tf-lab.local"

  org_description = "${local.github_owner} organization for GitHub terraform lab"

  team_member = "Nikxn91"

  # Predefined GitHub organization role "security_manager".
  # Verify with: GET /orgs/{org}/organization-roles
  security_manager_role_id = 138
}
