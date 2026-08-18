variable "gh_token" {
  description = "GitHub personal access token (classic) used by the GitHub provider"
  type        = string
  sensitive   = true
}

variable "username" {
  description = "Dummy API username"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "Dummy API password"
  type        = string
  sensitive   = true
}

variable "devops_team_membership" {
  description = "GitHub usernames to add to devops-team"
  type        = list(string)
}

variable "nodejs_team_membership" {
  description = "GitHub usernames to add to nodejs-team"
  type        = list(string)
}

variable "security_team_membership" {
  description = "GitHub usernames to add to security-team"
  type        = list(string)
}
