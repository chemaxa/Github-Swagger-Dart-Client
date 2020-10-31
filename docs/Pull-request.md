# swagger.model.PullRequest

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
**number** | **int** | Number uniquely identifying the pull request within its repository. | [default to null]
**state** | **String** | State of this Pull Request. Either &#x60;open&#x60; or &#x60;closed&#x60;. | [default to null]
**locked** | **bool** |  | [default to null]
**title** | **String** | The title of the pull request. | [default to null]
**user** | [**AllOfpullRequestUser**](AllOfpullRequestUser.md) |  | [default to null]
**body** | **String** |  | [default to null]
**labels** | [**List&lt;IssuesimpleLabels&gt;**](IssuesimpleLabels.md) |  | [default to []]
**milestone** | [**AllOfpullRequestMilestone**](AllOfpullRequestMilestone.md) |  | [default to null]
**activeLockReason** | **String** |  | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**closedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**mergedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**mergeCommitSha** | **String** |  | [default to null]
**assignee** | [**AllOfpullRequestAssignee**](AllOfpullRequestAssignee.md) |  | [default to null]
**assignees** | [**List&lt;SimpleUser&gt;**](SimpleUser.md) |  | [optional] [default to []]
**requestedReviewers** | [**List&lt;SimpleUser&gt;**](SimpleUser.md) |  | [optional] [default to []]
**requestedTeams** | [**List&lt;TeamSimple&gt;**](TeamSimple.md) |  | [optional] [default to []]
**head** | [**PullrequestHead**](PullrequestHead.md) |  | [default to null]
**base** | [**PullrequestBase**](PullrequestBase.md) |  | [default to null]
**links** | [**PullrequestsimpleLinks**](PullrequestsimpleLinks.md) |  | [default to null]
**authorAssociation** | **String** |  | [default to null]
**draft** | **bool** | Indicates whether or not the pull request is a draft. | [optional] [default to null]
**merged** | **bool** |  | [default to null]
**mergeable** | **bool** |  | [default to null]
**rebaseable** | **bool** |  | [optional] [default to null]
**mergeableState** | **String** |  | [default to null]
**mergedBy** | [**AllOfpullRequestMergedBy**](AllOfpullRequestMergedBy.md) |  | [default to null]
**comments** | **int** |  | [default to null]
**reviewComments** | **int** |  | [default to null]
**maintainerCanModify** | **bool** | Indicates whether maintainers can modify the pull request. | [default to null]
**commits** | **int** |  | [default to null]
**additions** | **int** |  | [default to null]
**deletions** | **int** |  | [default to null]
**changedFiles** | **int** |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

