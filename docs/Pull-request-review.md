# swagger.model.PullRequestReview

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier of the review | [default to null]
**nodeId** | **String** |  | [default to null]
**user** | [**AllOfpullRequestReviewUser**](AllOfpullRequestReviewUser.md) |  | [default to null]
**body** | **String** | The text of the review. | [default to null]
**state** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**pullRequestUrl** | **String** |  | [default to null]
**links** | [**PullrequestreviewLinks**](PullrequestreviewLinks.md) |  | [default to null]
**submittedAt** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**commitId** | **String** | A commit SHA for the review. | [default to null]
**bodyHtml** | **String** |  | [optional] [default to null]
**bodyText** | **String** |  | [optional] [default to null]
**authorAssociation** | **String** |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

