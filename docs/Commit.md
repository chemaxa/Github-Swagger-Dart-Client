# swagger.model.Commit

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [default to null]
**sha** | **String** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**commentsUrl** | **String** |  | [default to null]
**commit** | [**CommitCommit**](CommitCommit.md) |  | [default to null]
**author** | [**AllOfcommitAuthor**](AllOfcommitAuthor.md) |  | [default to null]
**committer** | [**AllOfcommitCommitter**](AllOfcommitCommitter.md) |  | [default to null]
**parents** | [**List&lt;CommitParents&gt;**](CommitParents.md) |  | [default to []]
**stats** | [**CommitStats**](CommitStats.md) |  | [optional] [default to null]
**files** | [**List&lt;CommitFiles&gt;**](CommitFiles.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

