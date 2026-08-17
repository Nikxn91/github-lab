terraform {
  required_version = ">= 1.5.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  backend "pg" {
    conn_str = "postgres://tfstate:tfstate@localhost/repos?sslmode=disable"
  }
}

provider "github" {
  owner = local.github_owner
  token = var.gh_token
}
