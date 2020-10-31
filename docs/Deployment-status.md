# swagger.model.DeploymentStatus

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [default to null]
**id** | **int** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**state** | **String** | The state of the status. | [default to null]
**creator** | [**AllOfdeploymentStatusCreator**](AllOfdeploymentStatusCreator.md) |  | [default to null]
**description** | **String** | A short description of the status. | [default to &quot;&quot;]
**environment** | **String** | The environment of the deployment that the status is for. | [optional] [default to &quot;&quot;]
**targetUrl** | **String** | Deprecated: the URL to associate with this status. | [default to &quot;&quot;]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**deploymentUrl** | **String** |  | [default to null]
**repositoryUrl** | **String** |  | [default to null]
**environmentUrl** | **String** | The URL for accessing your environment. | [optional] [default to &quot;&quot;]
**logUrl** | **String** | The URL to associate with this status. | [optional] [default to &quot;&quot;]
**performedViaGithubApp** | [**AllOfdeploymentStatusPerformedViaGithubApp**](AllOfdeploymentStatusPerformedViaGithubApp.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

