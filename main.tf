################################################################
# Repository
################################################################

resource "github_repository" "this" {
  name         = var.name
  description  = var.description
  homepage_url = var.homepage_url
  visibility   = var.visibility
  is_template  = var.is_template

  web_commit_signoff_required = var.web_commit_signoff_required

  has_wiki        = var.has_wiki
  has_issues      = var.has_issues
  has_discussions = var.has_discussions
  has_projects    = var.has_projects

  allow_merge_commit          = var.allow_merge_commit
  merge_commit_title          = var.merge_commit_title
  merge_commit_message        = var.merge_commit_message
  allow_squash_merge          = var.allow_squash_merge
  squash_merge_commit_title   = var.squash_merge_commit_title
  squash_merge_commit_message = var.squash_merge_commit_message
  allow_rebase_merge          = var.allow_rebase_merge

  allow_update_branch    = var.allow_update_branch
  allow_auto_merge       = var.allow_auto_merge
  delete_branch_on_merge = var.delete_branch_on_merge

  auto_init          = var.auto_init
  gitignore_template = var.gitignore_template
  license_template   = var.license_template

  archived           = var.archived
  archive_on_destroy = var.archive_on_destroy

  vulnerability_alerts                    = var.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = var.ignore_vulnerability_alerts_during_read

  topics = sort(var.topics)
}

################################################################
# Actions secret
################################################################

locals {
  actions_encrypted_secrets = { for name, value in var.actions_encrypted_secrets : name => { encrypted = value } }
  actions_plaintext_secrets = { for name, value in var.actions_plaintext_secrets : name => { plaintext = value } }

  actions_secrets = merge(local.actions_encrypted_secrets, local.actions_plaintext_secrets)
}

resource "github_actions_secret" "this" {
  for_each = local.actions_secrets

  repository      = github_repository.this.name
  secret_name     = each.key
  encrypted_value = try(each.value.encrypted, null)
  plaintext_value = try(each.value.plaintext, null)
}
