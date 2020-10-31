# swagger.model.IssueComment

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier of the issue comment | [default to null]
**nodeId** | **String** |  | [default to null]
**url** | **String** | URL for the issue comment | [default to null]
**body** | **String** | Contents of the issue comment | [optional] [default to null]
**bodyText** | **String** |  | [optional] [default to null]
**bodyHtml** | **String** |  | [optional] [default to null]
**htmlUrl** | **String** |  | [default to null]
**user** | [**AllOfissueCommentUser**](AllOfissueCommentUser.md) |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**issueUrl** | **String** |  | [default to null]
**authorAssociation** | **String** |  | [default to null]
**performedViaGithubApp** | [**AllOfissueCommentPerformedViaGithubApp**](AllOfissueCommentPerformedViaGithubApp.md) |  | [optional] [default to null]
**reactions** | [**ReactionRollup**](ReactionRollup.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

