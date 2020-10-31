# swagger.model.Job

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The id of the job. | [default to null]
**runId** | **int** | The id of the associated workflow run. | [default to null]
**runUrl** | **String** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**headSha** | **String** | The SHA of the commit that is being run. | [default to null]
**url** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**status** | **String** | The phase of the lifecycle that the job is currently in. | [default to null]
**conclusion** | **String** | The outcome of the job. | [default to null]
**startedAt** | [**DateTime**](DateTime.md) | The time that the job started, in ISO 8601 format. | [default to null]
**completedAt** | [**DateTime**](DateTime.md) | The time that the job finished, in ISO 8601 format. | [default to null]
**name** | **String** | The name of the job. | [default to null]
**steps** | [**List&lt;JobSteps&gt;**](JobSteps.md) | Steps in this job. | [optional] [default to []]
**checkRunUrl** | **String** |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

