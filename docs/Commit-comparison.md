# swagger.model.CommitComparison

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**permalinkUrl** | **String** |  | [default to null]
**diffUrl** | **String** |  | [default to null]
**patchUrl** | **String** |  | [default to null]
**baseCommit** | [**Commit**](Commit.md) |  | [default to null]
**mergeBaseCommit** | [**Commit**](Commit.md) |  | [default to null]
**status** | **String** |  | [default to null]
**aheadBy** | **int** |  | [default to null]
**behindBy** | **int** |  | [default to null]
**totalCommits** | **int** |  | [default to null]
**commits** | [**List&lt;Commit&gt;**](Commit.md) |  | [default to []]
**files** | [**List&lt;DiffEntry&gt;**](DiffEntry.md) |  | [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

