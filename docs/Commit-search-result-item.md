# swagger.model.CommitSearchResultItem

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [default to null]
**sha** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**commentsUrl** | **String** |  | [default to null]
**commit** | [**CommitsearchresultitemCommit**](CommitsearchresultitemCommit.md) |  | [default to null]
**author** | [**AllOfcommitSearchResultItemAuthor**](AllOfcommitSearchResultItemAuthor.md) |  | [default to null]
**committer** | [**AllOfcommitSearchResultItemCommitter**](AllOfcommitSearchResultItemCommitter.md) |  | [default to null]
**parents** | [**List&lt;FilecommitCommitParents&gt;**](FilecommitCommitParents.md) |  | [default to []]
**repository** | [**MinimalRepository**](MinimalRepository.md) |  | [default to null]
**score** | **int** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**textMatches** | [**SearchResultTextMatches**](SearchResultTextMatches.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

