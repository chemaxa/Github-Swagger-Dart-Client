# swagger.model.Body121

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the new pull request. | [optional] [default to null]
**head** | **String** | The name of the branch where your changes are implemented. For cross-repository pull requests in the same network, namespace &#x60;head&#x60; with a user like this: &#x60;username:branch&#x60;. | [default to null]
**base** | **String** | The name of the branch you want the changes pulled into. This should be an existing branch on the current repository. You cannot submit a pull request to one repository that requests a merge to a base of another repository. | [default to null]
**body** | **String** | The contents of the pull request. | [optional] [default to null]
**maintainerCanModify** | **bool** | Indicates whether [maintainers can modify](https://help.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/) the pull request. | [optional] [default to null]
**draft** | **bool** | Indicates whether the pull request is a draft. See \&quot;[Draft Pull Requests](https://help.github.com/en/articles/about-pull-requests#draft-pull-requests)\&quot; in the GitHub Help documentation to learn more. | [optional] [default to null]
**issue** | **int** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

