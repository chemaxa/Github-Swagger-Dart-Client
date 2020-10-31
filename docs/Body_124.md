# swagger.model.Body124

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the pull request. | [optional] [default to null]
**body** | **String** | The contents of the pull request. | [optional] [default to null]
**state** | **String** | State of this Pull Request. Either &#x60;open&#x60; or &#x60;closed&#x60;. | [optional] [default to null]
**base** | **String** | The name of the branch you want your changes pulled into. This should be an existing branch on the current repository. You cannot update the base branch on a pull request to point to another repository. | [optional] [default to null]
**maintainerCanModify** | **bool** | Indicates whether [maintainers can modify](https://help.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/) the pull request. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

