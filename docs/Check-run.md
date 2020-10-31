# swagger.model.CheckRun

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The id of the check. | [default to null]
**headSha** | **String** | The SHA of the commit that is being checked. | [default to null]
**nodeId** | **String** |  | [default to null]
**externalId** | **String** |  | [default to null]
**url** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**detailsUrl** | **String** |  | [default to null]
**status** | **String** | The phase of the lifecycle that the check is currently in. | [default to null]
**conclusion** | **String** |  | [default to null]
**startedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**completedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**output** | [**CheckrunOutput**](CheckrunOutput.md) |  | [default to null]
**name** | **String** | The name of the check. | [default to null]
**checkSuite** | [**CheckrunCheckSuite**](CheckrunCheckSuite.md) |  | [default to null]
**app** | [**AllOfcheckRunApp**](AllOfcheckRunApp.md) |  | [default to null]
**pullRequests** | [**List&lt;PullRequestMinimal&gt;**](PullRequestMinimal.md) |  | [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

