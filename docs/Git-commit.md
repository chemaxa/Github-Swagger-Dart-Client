# swagger.model.GitCommit

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sha** | **String** | SHA for the commit | [optional] [default to null]
**nodeId** | **String** |  | [optional] [default to null]
**url** | **String** |  | [optional] [default to null]
**author** | [**GitcommitAuthor**](GitcommitAuthor.md) |  | [optional] [default to null]
**committer** | [**GitcommitAuthor**](GitcommitAuthor.md) |  | [optional] [default to null]
**message** | **String** | Message describing the purpose of the commit | [optional] [default to null]
**tree** | [**GitcommitTree**](GitcommitTree.md) |  | [optional] [default to null]
**parents** | [**List&lt;GitcommitParents&gt;**](GitcommitParents.md) |  | [optional] [default to []]
**verification** | [**FilecommitCommitVerification**](FilecommitCommitVerification.md) |  | [optional] [default to null]
**htmlUrl** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

