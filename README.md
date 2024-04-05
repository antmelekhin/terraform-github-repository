# GitHub Module

This module manages GitHub repositories.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_secret.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_branch.default](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch_default.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the repository. | `string` | n/a | yes |
| <a name="input_actions_encrypted_secrets"></a> [actions\_encrypted\_secrets](#input\_actions\_encrypted\_secrets) | Configuring encrypted actions secrets. | `map(string)` | `{}` | no |
| <a name="input_actions_plaintext_secrets"></a> [actions\_plaintext\_secrets](#input\_actions\_plaintext\_secrets) | Configuring plaintext actions secrets. | `map(string)` | `{}` | no |
| <a name="input_allow_auto_merge"></a> [allow\_auto\_merge](#input\_allow\_auto\_merge) | Set to `true` to allow auto-merging pull requests on the repository. | `bool` | `false` | no |
| <a name="input_allow_merge_commit"></a> [allow\_merge\_commit](#input\_allow\_merge\_commit) | Set to `false` to disable merge commits on the repository. | `bool` | `true` | no |
| <a name="input_allow_rebase_merge"></a> [allow\_rebase\_merge](#input\_allow\_rebase\_merge) | Set to `false` to disable rebase merges on the repository. | `bool` | `true` | no |
| <a name="input_allow_squash_merge"></a> [allow\_squash\_merge](#input\_allow\_squash\_merge) | Set to `false` to disable squash merges on the repository. | `bool` | `true` | no |
| <a name="input_allow_update_branch"></a> [allow\_update\_branch](#input\_allow\_update\_branch) | Set to `false` to disable updating pull request branches. | `bool` | `true` | no |
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | Set to `true` to archive the repository instead of deleting on destroy. | `bool` | `false` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | Specifies if the repository should be archived. | `bool` | `false` | no |
| <a name="input_auto_init"></a> [auto\_init](#input\_auto\_init) | Set to `true` to produce an initial commit in the repository. | `bool` | `false` | no |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | The name of the default branch of the repository. Branches can only be created on non-empty repositories. | `string` | `"main"` | no |
| <a name="input_default_branch_rename"></a> [default\_branch\_rename](#input\_default\_branch\_rename) | Indicate if it should rename the branch rather than use an existing branch. | `bool` | `false` | no |
| <a name="input_delete_branch_on_merge"></a> [delete\_branch\_on\_merge](#input\_delete\_branch\_on\_merge) | Automatically delete head branch after a pull request is merged. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | A description of the repository. | `string` | `null` | no |
| <a name="input_gitignore_template"></a> [gitignore\_template](#input\_gitignore\_template) | Use the name of the template without the extension. For example, 'Haskell'. | `string` | `null` | no |
| <a name="input_has_discussions"></a> [has\_discussions](#input\_has\_discussions) | Set to `true` to enable the GitHub Discussions features on the repository. | `bool` | `false` | no |
| <a name="input_has_issues"></a> [has\_issues](#input\_has\_issues) | Set to `false` to disable the GitHub Issues features on the repository. | `bool` | `true` | no |
| <a name="input_has_projects"></a> [has\_projects](#input\_has\_projects) | Set to `true` to enable the GitHub Projects features on the repository. | `bool` | `false` | no |
| <a name="input_has_wiki"></a> [has\_wiki](#input\_has\_wiki) | Set to `true` to enable the GitHub Wiki features on the repository. | `bool` | `false` | no |
| <a name="input_homepage_url"></a> [homepage\_url](#input\_homepage\_url) | URL of a page describing the project. | `string` | `null` | no |
| <a name="input_ignore_vulnerability_alerts_during_read"></a> [ignore\_vulnerability\_alerts\_during\_read](#input\_ignore\_vulnerability\_alerts\_during\_read) | Set to `true` to not call the vulnerability alerts endpoint so the resource can also be used without admin permissions during read. | `bool` | `null` | no |
| <a name="input_is_template"></a> [is\_template](#input\_is\_template) | Set to `true` to tell GitHub that this is a template repository. | `bool` | `false` | no |
| <a name="input_license_template"></a> [license\_template](#input\_license\_template) | Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'. | `string` | `null` | no |
| <a name="input_merge_commit_message"></a> [merge\_commit\_message](#input\_merge\_commit\_message) | Can be `PR_BODY`, `PR_TITLE`, or `BLANK` for a default merge commit message. | `string` | `"PR_TITLE"` | no |
| <a name="input_merge_commit_title"></a> [merge\_commit\_title](#input\_merge\_commit\_title) | Can be `PR_TITLE` or `MERGE_MESSAGE` for a default merge commit title. | `string` | `"MERGE_MESSAGE"` | no |
| <a name="input_squash_merge_commit_message"></a> [squash\_merge\_commit\_message](#input\_squash\_merge\_commit\_message) | Can be `PR_BODY`, `COMMIT_MESSAGES`, or `BLANK` for a default squash merge commit message. | `string` | `"COMMIT_MESSAGES"` | no |
| <a name="input_squash_merge_commit_title"></a> [squash\_merge\_commit\_title](#input\_squash\_merge\_commit\_title) | Can be `PR_TITLE` or `COMMIT_OR_PR_TITLE` for a default squash merge commit title. | `string` | `"COMMIT_OR_PR_TITLE"` | no |
| <a name="input_topics"></a> [topics](#input\_topics) | The list of topics of the repository. | `set(string)` | `[]` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | Visibility of a project. Can be `public`, `private` or `internal` (GHE only). | `string` | `"public"` | no |
| <a name="input_vulnerability_alerts"></a> [vulnerability\_alerts](#input\_vulnerability\_alerts) | Set to `false` to disable security alerts for vulnerable dependencies. | `bool` | `true` | no |
| <a name="input_web_commit_signoff_required"></a> [web\_commit\_signoff\_required](#input\_web\_commit\_signoff\_required) | Require contributors to sign off on web-based commits. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_branch"></a> [default\_branch](#output\_default\_branch) | The name of the default branch of the repository. |
| <a name="output_full_name"></a> [full\_name](#output\_full\_name) | A string of the form 'orgname/reponame'. |
| <a name="output_git_clone_url"></a> [git\_clone\_url](#output\_git\_clone\_url) | URL that can be provided to `git clone` to clone the repository anonymously via the git protocol. |
| <a name="output_html_url"></a> [html\_url](#output\_html\_url) | URL to the repository on the web. |
| <a name="output_http_clone_url"></a> [http\_clone\_url](#output\_http\_clone\_url) | URL that can be provided to `git clone` to clone the repository via HTTPS. |
| <a name="output_name"></a> [name](#output\_name) | The name of the repository. |
| <a name="output_repo_id"></a> [repo\_id](#output\_repo\_id) | GitHub ID for the repository. |
| <a name="output_ssh_clone_url"></a> [ssh\_clone\_url](#output\_ssh\_clone\_url) | URL that can be provided to `git clone` to clone the repository via SSH. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
