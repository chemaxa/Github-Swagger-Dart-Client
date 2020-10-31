# swagger.model.Deployment

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [default to null]
**id** | **int** | Unique identifier of the deployment | [default to null]
**nodeId** | **String** |  | [default to null]
**sha** | **String** |  | [default to null]
**ref** | **String** | The ref to deploy. This can be a branch, tag, or sha. | [default to null]
**task** | **String** | Parameter to specify a task to execute | [default to null]
**payload** | [**Object**](Object.md) |  | [default to null]
**originalEnvironment** | **String** |  | [optional] [default to null]
**environment** | **String** | Name for the target deployment environment. | [default to null]
**description** | **String** |  | [default to null]
**creator** | [**AllOfdeploymentCreator**](AllOfdeploymentCreator.md) |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**statusesUrl** | **String** |  | [default to null]
**repositoryUrl** | **String** |  | [default to null]
**transientEnvironment** | **bool** | Specifies if the given environment is will no longer exist at some point in the future. Default: false. | [optional] [default to null]
**productionEnvironment** | **bool** | Specifies if the given environment is one that end-users directly interact with. Default: false. | [optional] [default to null]
**performedViaGithubApp** | [**AllOfdeploymentPerformedViaGithubApp**](AllOfdeploymentPerformedViaGithubApp.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

