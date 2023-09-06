# GitHub Module

This module manages GitHub repositories.

## Requirements

| Name      | Version   |
|-----------|-----------|
| terraform | >= 0.13.0 |
| github    | >= 5.0.0  |

## Providers

| Name   | Version  |
|--------|----------|
| github | >= 5.0.0 |

## Inputs

| Name                        | Description                                                                          | Type          | Default    | Required |
|-----------------------------|--------------------------------------------------------------------------------------|---------------|------------|:--------:|
| name                        | The name of the repository.                                                          | `string`      | n/a        | yes      |
| description                 | A description of the repository.                                                     | `string`      | `null`     | no       |
| homepage\_url               | URL of a page describing the project.                                                | `string`      | `null`     | no       |
| visibility                  | Visibility of a project. Can be `public`, `private` or `internal` (GHE only).        | `string`      | `"public"` | no       |
| has\_issues                 | Set to `false` to disable the GitHub Issues features on the repository.              | `bool`        | `true`     | no       |
| has\_discussions            | Set to `false` to disable the GitHub Discussions features on the repository.         | `bool`        | `true`     | no       |
| has\_projects               | Set to `true` to enable the GitHub Projects features on the repository.              | `bool`        | `false`    | no       |
| has\_wiki                   | Set to `true` to enable the GitHub Wiki features on the repository.                  | `bool`        | `false`    | no       |
| allow\_merge\_commit        | Set to `false` to disable merge commits on the repository.                           | `bool`        | `true`     | no       |
| allow\_squash\_merge        | Set to `false` to disable squash merges on the repository.                           | `bool`        | `true`     | no       |
| allow\_rebase\_merge        | Set to `false` to disable rebase merges on the repository.                           | `bool`        | `true`     | no       |
| allow\_auto\_merge          | Set to `true` to allow auto-merging pull requests on the repository.                 | `bool`        | `false`    | no       |
| delete\_branch\_on\_merge   | Automatically delete head branch after a pull request is merged.                     | `bool`        | `false`    | no       |
| auto\_init                  | Set to true to produce an initial commit in the repository.                          | `bool`        | `false`    | no       |
| gitignore\_template         | Use the name of the template without the extension. For example, 'Haskell'.          | `string`      | `null`     | no       |
| license\_template           | Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'. | `string`      | `null`     | no       |
| archived                    | Specifies if the repository should be archived.                                      | `bool`        | `false`    | no       |
| archive\_on\_destroy        | Set to `true` to archive the repository instead of deleting on destroy.              | `bool`        | `false`    | no       |
| vulnerability\_alerts       | Set to `true` to enable security alerts for vulnerable dependencies.                 | `bool`        | `false`    | no       |
| topics                      | The list of topics of the repository.                                                | `set(string)` | `[]`       | no       |
| actions\_encrypted\_secrets | Configuring encrypted actions secrets.                                               | `map(string)` | `{}`       | no       |
| actions\_plaintext\_secrets | Configuring plaintext actions secrets.                                               | `map(string)` | `{}`       | no       |

## Outputs

| Name             | Description                                                                                       |
|------------------|---------------------------------------------------------------------------------------------------|
| full\_name       | A string of the form 'orgname/reponame'.                                                          |
| html\_url        | URL to the repository on the web.                                                                 |
| ssh\_clone\_url  | URL that can be provided to `git clone` to clone the repository via SSH.                          |
| http\_clone\_url | URL that can be provided to `git clone` to clone the repository via HTTPS.                        |
| git\_clone\_url  | URL that can be provided to `git clone` to clone the repository anonymously via the git protocol. |
| repo\_id         | GitHub ID for the repository.                                                                     |
