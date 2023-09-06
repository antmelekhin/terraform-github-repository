provider "github" {}

module "repository" {
  source = "../"

  name               = "public-repository"
  gitignore_template = "Terraform"
  license_template   = "apache-2.0"
}
