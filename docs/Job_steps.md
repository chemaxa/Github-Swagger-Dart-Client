# swagger.model.JobSteps

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | The phase of the lifecycle that the job is currently in. | [default to null]
**conclusion** | **String** | The outcome of the job. | [default to null]
**name** | **String** | The name of the job. | [default to null]
**number** | **int** |  | [default to null]
**startedAt** | [**DateTime**](DateTime.md) | The time that the step started, in ISO 8601 format. | [optional] [default to null]
**completedAt** | [**DateTime**](DateTime.md) | The time that the job finished, in ISO 8601 format. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

