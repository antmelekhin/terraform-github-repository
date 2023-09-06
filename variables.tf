################################################################
# Repository variables
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

variable "has_issues" {
  description = "Set to `false` to disable the GitHub Issues features on the repository."
  type        = bool
  default     = true
}

variable "has_discussions" {
  description = "Set to `false` to disable the GitHub Discussions features on the repository."
  type        = bool
  default     = true
}

variable "has_projects" {
  description = "Set to `true` to enable the GitHub Projects features on the repository."
  type        = bool
  default     = false
}

variable "has_wiki" {
  description = "Set to `true` to enable the GitHub Wiki features on the repository."
  type        = bool
  default     = false
}

variable "allow_merge_commit" {
  description = "Set to `false` to disable merge commits on the repository."
  type        = bool
  default     = true
}

variable "allow_squash_merge" {
  description = "Set to `false` to disable squash merges on the repository."
  type        = bool
  default     = true
}

variable "allow_rebase_merge" {
  description = "Set to `false` to disable rebase merges on the repository."
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

variable "auto_init" {
  description = "Set to true to produce an initial commit in the repository."
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

variable "vulnerability_alerts" {
  description = "Set to `true` to enable security alerts for vulnerable dependencies."
  type        = bool
  default     = false
}

variable "topics" {
  description = "The list of topics of the repository."
  type        = set(string)
  default     = []
}

################################################################
# Actions secret variables
################################################################

variable "actions_encrypted_secrets" {
  description = "Configuring encrypted actions secrets."
  type        = map(string)
  default     = {}
}

variable "actions_plaintext_secrets" {
  description = "Configuring plaintext actions secrets."
  type        = map(string)
  default     = {}
}
