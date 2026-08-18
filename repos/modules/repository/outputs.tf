output "name" {
  description = "Repository name"
  value       = github_repository.this.name
}

output "full_name" {
  description = "Full repository name in owner/name form"
  value       = github_repository.this.full_name
}

output "repo_id" {
  description = "Numeric GitHub repository ID"
  value       = github_repository.this.repo_id
}

output "organization_secret_names" {
  description = "Organization secret names intended for the repository"
  value       = var.organization_secret_names
  sensitive   = true
}
