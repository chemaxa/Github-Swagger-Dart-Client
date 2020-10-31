# swagger.model.PullRequestSimple

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [default to null]
**id** | **int** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**diffUrl** | **String** |  | [default to null]
**patchUrl** | **String** |  | [default to null]
**issueUrl** | **String** |  | [default to null]
**commitsUrl** | **String** |  | [default to null]
**reviewCommentsUrl** | **String** |  | [default to null]
**reviewCommentUrl** | **String** |  | [default to null]
**commentsUrl** | **String** |  | [default to null]
**statusesUrl** | **String** |  | [default to null]
**number** | **int** |  | [default to null]
**state** | **String** |  | [default to null]
**locked** | **bool** |  | [default to null]
**title** | **String** |  | [default to null]
**user** | [**AllOfpullRequestSimpleUser**](AllOfpullRequestSimpleUser.md) |  | [default to null]
**body** | **String** |  | [default to null]
**labels** | [**List&lt;PullrequestsimpleLabels&gt;**](PullrequestsimpleLabels.md) |  | [default to []]
**milestone** | [**AllOfpullRequestSimpleMilestone**](AllOfpullRequestSimpleMilestone.md) |  | [default to null]
**activeLockReason** | **String** |  | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**closedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**mergedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**mergeCommitSha** | **String** |  | [default to null]
**assignee** | [**AllOfpullRequestSimpleAssignee**](AllOfpullRequestSimpleAssignee.md) |  | [default to null]
**assignees** | [**List&lt;SimpleUser&gt;**](SimpleUser.md) |  | [optional] [default to []]
**requestedReviewers** | [**List&lt;SimpleUser&gt;**](SimpleUser.md) |  | [optional] [default to []]
**requestedTeams** | [**List&lt;TeamSimple&gt;**](TeamSimple.md) |  | [optional] [default to []]
**head** | [**PullrequestsimpleHead**](PullrequestsimpleHead.md) |  | [default to null]
**base** | [**PullrequestsimpleHead**](PullrequestsimpleHead.md) |  | [default to null]
**links** | [**PullrequestsimpleLinks**](PullrequestsimpleLinks.md) |  | [default to null]
**authorAssociation** | **String** |  | [default to null]
**draft** | **bool** | Indicates whether or not the pull request is a draft. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

