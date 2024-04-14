################################################################
# Repository
################################################################

output "name" {
  description = "The name of the repository."
  value       = github_repository.this.name
}

output "full_name" {
  description = "A string of the form 'orgname/reponame'."
  value       = github_repository.this.full_name
}

output "html_url" {
  description = "URL to the repository on the web."
  value       = github_repository.this.html_url
}

output "ssh_clone_url" {
  description = "URL that can be provided to `git clone` to clone the repository via SSH."
  value       = github_repository.this.ssh_clone_url
}

output "http_clone_url" {
  description = "URL that can be provided to `git clone` to clone the repository via HTTPS."
  value       = github_repository.this.http_clone_url
}

output "git_clone_url" {
  description = "URL that can be provided to `git clone` to clone the repository anonymously via the git protocol."
  value       = github_repository.this.git_clone_url
}

output "repo_id" {
  description = "GitHub ID for the repository."
  value       = github_repository.this.repo_id
}

################################################################
# Branches
################################################################

output "default_branch" {
  description = "The name of the default branch of the repository."
  value       = try(github_branch.default[0].branch, github_branch_default.this[0].branch, "main")
}
