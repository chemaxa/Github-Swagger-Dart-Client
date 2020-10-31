# swagger.model.TeamDiscussion

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**author** | [**AllOfteamDiscussionAuthor**](AllOfteamDiscussionAuthor.md) |  | [default to null]
**body** | **String** | The main text of the discussion. | [default to null]
**bodyHtml** | **String** |  | [default to null]
**bodyVersion** | **String** | The current version of the body content. If provided, this update operation will be rejected if the given version does not match the latest version on the server. | [default to null]
**commentsCount** | **int** |  | [default to null]
**commentsUrl** | **String** |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**lastEditedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**number** | **int** | The unique sequence number of a team discussion. | [default to null]
**pinned** | **bool** | Whether or not this discussion should be pinned for easy retrieval. | [default to null]
**private** | **bool** | Whether or not this discussion should be restricted to team members and organization administrators. | [default to null]
**teamUrl** | **String** |  | [default to null]
**title** | **String** | The title of the discussion. | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**url** | **String** |  | [default to null]
**reactions** | [**ReactionRollup**](ReactionRollup.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

