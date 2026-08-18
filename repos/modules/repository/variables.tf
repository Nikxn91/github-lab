variable "name" {
  description = "Repository name"
  type        = string
}

variable "description" {
  description = "Repository description"
  type        = string
  default     = null
}

variable "visibility" {
  description = "Repository visibility: public, private, or internal"
  type        = string
  default     = "private"

  validation {
    condition     = contains(["public", "private", "internal"], var.visibility)
    error_message = "visibility must be public, private, or internal."
  }
}

variable "auto_init" {
  description = "Create the repository with an initial README commit"
  type        = bool
  default     = false
}

variable "vulnerability_alerts" {
  description = "Enable GitHub vulnerability alerts"
  type        = bool
  default     = true
}

variable "has_issues" {
  description = "Enable GitHub Issues"
  type        = bool
  default     = false
}

variable "has_projects" {
  description = "Enable GitHub Projects"
  type        = bool
  default     = false
}

variable "has_wiki" {
  description = "Enable GitHub Wiki"
  type        = bool
  default     = false
}

variable "allow_squash_merge" {
  description = "Allow squash merge"
  type        = bool
  default     = true
}

variable "allow_merge_commit" {
  description = "Allow merge commits"
  type        = bool
  default     = true
}

variable "allow_rebase_merge" {
  description = "Allow rebase merge"
  type        = bool
  default     = true
}

variable "delete_branch_on_merge" {
  description = "Automatically delete merged head branches"
  type        = bool
  default     = false
}

variable "team_permissions" {
  description = "Map of GitHub team slug to repository permission"
  type        = map(string)
  default     = {}
}

variable "protected_branches" {
  description = "Branch patterns intended for protection/ruleset management"
  type        = set(string)
  default     = []
}

variable "organization_secret_names" {
  description = "Organization secret names intended to be available to this repository"
  type        = set(string)
  default     = []
}

variable "repository_secrets" {
  description = "Repository Actions secrets, keyed by secret name"
  type        = map(string)
  sensitive   = true
  default     = {}
}
