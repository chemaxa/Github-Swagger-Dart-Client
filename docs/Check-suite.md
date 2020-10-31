# swagger.model.CheckSuite

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**headBranch** | **String** |  | [default to null]
**headSha** | **String** | The SHA of the head commit that is being checked. | [default to null]
**status** | **String** |  | [default to null]
**conclusion** | **String** |  | [default to null]
**url** | **String** |  | [default to null]
**before** | **String** |  | [default to null]
**after** | **String** |  | [default to null]
**pullRequests** | [**List&lt;PullRequestMinimal&gt;**](PullRequestMinimal.md) |  | [default to []]
**app** | [**AllOfcheckSuiteApp**](AllOfcheckSuiteApp.md) |  | [default to null]
**repository** | [**MinimalRepository**](MinimalRepository.md) |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**headCommit** | [**SimpleCommit**](SimpleCommit.md) |  | [default to null]
**latestCheckRunsCount** | **int** |  | [default to null]
**checkRunsUrl** | **String** |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

