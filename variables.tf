################################################################
# Repository
################################################################

variable "name" {
  description = "The name of the repository."
  type        = string
}

variable "description" {
  description = "A description of the repository."
  type        = string
  default     = null
}

variable "homepage_url" {
  description = "URL of a page describing the project."
  type        = string
  default     = null
}

variable "visibility" {
  description = "Visibility of a project. Can be `public`, `private` or `internal` (GHE only)."
  type        = string
  default     = "public"
}

variable "is_template" {
  description = "Set to `true` to tell GitHub that this is a template repository."
  type        = bool
  default     = false
}

variable "has_wiki" {
  description = "Set to `true` to enable the GitHub Wiki features on the repository."
  type        = bool
  default     = false
}

variable "has_issues" {
  description = "Set to `false` to disable the GitHub Issues features on the repository."
  type        = bool
  default     = true
}

variable "has_discussions" {
  description = "Set to `true` to enable the GitHub Discussions features on the repository."
  type        = bool
  default     = false
}

variable "has_projects" {
  description = "Set to `true` to enable the GitHub Projects features on the repository."
  type        = bool
  default     = false
}

variable "allow_merge_commit" {
  description = "Set to `false` to disable merge commits on the repository."
  type        = bool
  default     = true
}

variable "merge_commit_title" {
  description = "Can be `PR_TITLE` or `MERGE_MESSAGE` for a default merge commit title."
  type        = string
  default     = "MERGE_MESSAGE"
}

variable "merge_commit_message" {
  description = "Can be `PR_BODY`, `PR_TITLE`, or `BLANK` for a default merge commit message."
  type        = string
  default     = "PR_TITLE"
}

variable "allow_squash_merge" {
  description = "Set to `false` to disable squash merges on the repository."
  type        = bool
  default     = true
}

variable "squash_merge_commit_title" {
  description = "Can be `PR_TITLE` or `COMMIT_OR_PR_TITLE` for a default squash merge commit title."
  type        = string
  default     = "COMMIT_OR_PR_TITLE"
}

variable "squash_merge_commit_message" {
  description = "Can be `PR_BODY`, `COMMIT_MESSAGES`, or `BLANK` for a default squash merge commit message."
  type        = string
  default     = "COMMIT_MESSAGES"
}

variable "allow_rebase_merge" {
  description = "Set to `false` to disable rebase merges on the repository."
  type        = bool
  default     = true
}

variable "allow_update_branch" {
  description = "Set to `false` to disable updating pull request branches."
  type        = bool
  default     = true
}

variable "allow_auto_merge" {
  description = "Set to `true` to allow auto-merging pull requests on the repository."
  type        = bool
  default     = false
}

variable "delete_branch_on_merge" {
  description = "Automatically delete head branch after a pull request is merged."
  type        = bool
  default     = false
}

variable "web_commit_signoff_required" {
  description = "Require contributors to sign off on web-based commits."
  type        = bool
  default     = false
}

variable "auto_init" {
  description = "Set to `true` to produce an initial commit in the repository."
  type        = bool
  default     = false
}

variable "gitignore_template" {
  description = "Use the name of the template without the extension. For example, 'Haskell'."
  type        = string
  default     = null
}

variable "license_template" {
  description = "Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'."
  type        = string
  default     = null
}

variable "archived" {
  description = "Specifies if the repository should be archived."
  type        = bool
  default     = false
}

variable "archive_on_destroy" {
  description = "Set to `true` to archive the repository instead of deleting on destroy."
  type        = bool
  default     = false
}

variable "topics" {
  description = "The list of topics of the repository."
  type        = set(string)
  default     = []
}

variable "vulnerability_alerts_enabled" {
  description = "Whether vulnerability alerts are enabled for the repository."
  type        = bool
  default     = true
}

################################################################
# Branches
################################################################

variable "default_branch" {
  description = "The name of the default branch of the repository. Default branch can only be created on non-empty repositories."
  type        = string
  default     = null
}

variable "default_branch_rename" {
  description = "Indicate if it should rename the branch rather than use an existing default branch."
  type        = bool
  default     = false
}

variable "branches" {
  description = "The list of a branches of the repository. Branches can only be created on non-empty repositories."
  type        = list(map(string))
  default     = []
}

################################################################
# Actions secrets and variables
################################################################

variable "actions_secrets" {
  description = "Configuring actions secrets."
  type = object({
    plaintext = optional(map(string), {})
    encrypted = optional(map(string), {})
  })
  default = {}
}

variable "actions_variables" {
  description = "Configuring actions variables."
  type        = map(string)
  default     = {}
}
