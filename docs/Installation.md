# swagger.model.Installation

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The ID of the installation. | [default to null]
**account** | [**AnyOfinstallationAccount**](AnyOfinstallationAccount.md) |  | [default to null]
**repositorySelection** | **String** | Describe whether all repositories have been selected or there&#x27;s a selection involved | [default to null]
**accessTokensUrl** | **String** |  | [default to null]
**repositoriesUrl** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**appId** | **int** |  | [default to null]
**targetId** | **int** | The ID of the user or organization this token is being scoped to. | [default to null]
**targetType** | **String** |  | [default to null]
**permissions** | [**InstallationPermissions**](InstallationPermissions.md) |  | [default to null]
**events** | **List&lt;String&gt;** |  | [default to []]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**singleFileName** | **String** |  | [default to null]
**appSlug** | **String** |  | [default to null]
**suspendedBy** | [**AllOfinstallationSuspendedBy**](AllOfinstallationSuspendedBy.md) |  | [optional] [default to null]
**suspendedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**contactEmail** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

