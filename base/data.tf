# Discover tf-lab-app so its numeric GitHub repository ID can be reused
# for Actions permissions and organization-secret access.
data "github_repository" "tf_lab_app" {
  full_name = "${local.github_owner}/tf-lab-app"
}
