moved {
  from = github_repository.tf_github_lab_app_repository
  to   = module.app.github_repository.this
}

moved {
  from = github_repository.tf_github_lab_devops_repository
  to   = module.devops.github_repository.this
}

moved {
  from = github_repository.tf_github_lab_spa_repository
  to   = module.spa.github_repository.this
}

moved {
  from = github_team_repository.tf_github_lab_app_repository["devops-team"]
  to   = module.app.github_team_repository.team["devops-team"]
}

moved {
  from = github_team_repository.tf_github_lab_app_repository["nodejs-team"]
  to   = module.app.github_team_repository.team["nodejs-team"]
}

moved {
  from = github_team_repository.tf_github_lab_app_repository["security-team"]
  to   = module.app.github_team_repository.team["security-team"]
}
