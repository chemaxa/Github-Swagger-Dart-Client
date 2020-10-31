# swagger.model.Body41

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the repository. | [default to null]
**description** | **String** | A short description of the repository. | [optional] [default to null]
**homepage** | **String** | A URL with more information about the repository. | [optional] [default to null]
**private** | **bool** | Either &#x60;true&#x60; to create a private repository or &#x60;false&#x60; to create a public one. | [optional] [default to false]
**visibility** | **String** | Can be &#x60;public&#x60; or &#x60;private&#x60;. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, &#x60;visibility&#x60; can also be &#x60;internal&#x60;. For more information, see \&quot;[Creating an internal repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-repository-visibility#about-internal-repositories)\&quot; in the GitHub Help documentation.   The &#x60;visibility&#x60; parameter overrides the &#x60;private&#x60; parameter when you use both parameters with the &#x60;nebula-preview&#x60; preview header. | [optional] [default to null]
**hasIssues** | **bool** | Either &#x60;true&#x60; to enable issues for this repository or &#x60;false&#x60; to disable them. | [optional] [default to true]
**hasProjects** | **bool** | Either &#x60;true&#x60; to enable projects for this repository or &#x60;false&#x60; to disable them. **Note:** If you&#x27;re creating a repository in an organization that has disabled repository projects, the default is &#x60;false&#x60;, and if you pass &#x60;true&#x60;, the API returns an error. | [optional] [default to true]
**hasWiki** | **bool** | Either &#x60;true&#x60; to enable the wiki for this repository or &#x60;false&#x60; to disable it. | [optional] [default to true]
**isTemplate** | **bool** | Either &#x60;true&#x60; to make this repo available as a template repository or &#x60;false&#x60; to prevent it. | [optional] [default to false]
**teamId** | **int** | The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization. | [optional] [default to null]
**autoInit** | **bool** | Pass &#x60;true&#x60; to create an initial commit with empty README. | [optional] [default to false]
**gitignoreTemplate** | **String** | Desired language or platform [.gitignore template](https://github.com/github/gitignore) to apply. Use the name of the template without the extension. For example, \&quot;Haskell\&quot;. | [optional] [default to null]
**licenseTemplate** | **String** | Choose an [open source license template](https://choosealicense.com/) that best suits your needs, and then use the [license keyword](https://help.github.com/articles/licensing-a-repository/#searching-github-by-license-type) as the &#x60;license_template&#x60; string. For example, \&quot;mit\&quot; or \&quot;mpl-2.0\&quot;. | [optional] [default to null]
**allowSquashMerge** | **bool** | Either &#x60;true&#x60; to allow squash-merging pull requests, or &#x60;false&#x60; to prevent squash-merging. | [optional] [default to true]
**allowMergeCommit** | **bool** | Either &#x60;true&#x60; to allow merging pull requests with a merge commit, or &#x60;false&#x60; to prevent merging pull requests with merge commits. | [optional] [default to true]
**allowRebaseMerge** | **bool** | Either &#x60;true&#x60; to allow rebase-merging pull requests, or &#x60;false&#x60; to prevent rebase-merging. | [optional] [default to true]
**deleteBranchOnMerge** | **bool** | Either &#x60;true&#x60; to allow automatically deleting head branches when pull requests are merged, or &#x60;false&#x60; to prevent automatic deletion. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

