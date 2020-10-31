# swagger.model.WorkflowRun

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The ID of the workflow run. | [default to null]
**nodeId** | **String** |  | [default to null]
**headBranch** | **String** |  | [default to null]
**headSha** | **String** | The SHA of the head commit that points to the version of the worflow being run. | [default to null]
**runNumber** | **int** | The auto incrementing run number for the workflow run. | [default to null]
**event** | **String** |  | [default to null]
**status** | **String** |  | [default to null]
**conclusion** | **String** |  | [default to null]
**workflowId** | **int** | The ID of the parent workflow. | [default to null]
**url** | **String** | The URL to the workflow run. | [default to null]
**htmlUrl** | **String** |  | [default to null]
**pullRequests** | [**List&lt;PullRequestMinimal&gt;**](PullRequestMinimal.md) |  | [default to []]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**jobsUrl** | **String** | The URL to the jobs for the workflow run. | [default to null]
**logsUrl** | **String** | The URL to download the logs for the workflow run. | [default to null]
**checkSuiteUrl** | **String** | The URL to the associated check suite. | [default to null]
**artifactsUrl** | **String** | The URL to the artifacts for the workflow run. | [default to null]
**cancelUrl** | **String** | The URL to cancel the workflow run. | [default to null]
**rerunUrl** | **String** | The URL to rerun the workflow run. | [default to null]
**workflowUrl** | **String** | The URL to the workflow. | [default to null]
**headCommit** | [**SimpleCommit**](SimpleCommit.md) |  | [default to null]
**repository** | [**MinimalRepository**](MinimalRepository.md) |  | [default to null]
**headRepository** | [**MinimalRepository**](MinimalRepository.md) |  | [default to null]
**headRepositoryId** | **int** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

