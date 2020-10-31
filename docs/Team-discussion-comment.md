# swagger.model.TeamDiscussionComment

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**AllOfteamDiscussionCommentAuthor**](AllOfteamDiscussionCommentAuthor.md) |  | [default to null]
**body** | **String** | The main text of the comment. | [default to null]
**bodyHtml** | **String** |  | [default to null]
**bodyVersion** | **String** | The current version of the body content. If provided, this update operation will be rejected if the given version does not match the latest version on the server. | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**lastEditedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**discussionUrl** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**number** | **int** | The unique sequence number of a team discussion comment. | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**url** | **String** |  | [default to null]
**reactions** | [**ReactionRollup**](ReactionRollup.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

