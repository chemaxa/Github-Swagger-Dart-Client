# swagger.model.Issue

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**url** | **String** | URL for the issue | [default to null]
**repositoryUrl** | **String** |  | [default to null]
**labelsUrl** | **String** |  | [default to null]
**commentsUrl** | **String** |  | [default to null]
**eventsUrl** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**number** | **int** | Number uniquely identifying the issue within its repository | [default to null]
**state** | **String** | State of the issue; either &#x27;open&#x27; or &#x27;closed&#x27; | [default to null]
**title** | **String** | Title of the issue | [default to null]
**body** | **String** | Contents of the issue | [optional] [default to null]
**user** | [**AllOfissueUser**](AllOfissueUser.md) |  | [default to null]
**labels** | [**List&lt;OneOfissueLabelsItems&gt;**](Object.md) | Labels to associate with this issue; pass one or more label names to replace the set of labels on this issue; send an empty array to clear all labels from the issue; note that the labels are silently dropped for users without push access to the repository | [default to []]
**assignee** | [**AllOfissueAssignee**](AllOfissueAssignee.md) |  | [default to null]
**assignees** | [**List&lt;SimpleUser&gt;**](SimpleUser.md) |  | [optional] [default to []]
**milestone** | [**AllOfissueMilestone**](AllOfissueMilestone.md) |  | [default to null]
**locked** | **bool** |  | [default to null]
**activeLockReason** | **String** |  | [optional] [default to null]
**comments** | **int** |  | [default to null]
**pullRequest** | [**IssuesimplePullRequest**](IssuesimplePullRequest.md) |  | [optional] [default to null]
**closedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**closedBy** | [**AllOfissueClosedBy**](AllOfissueClosedBy.md) |  | [optional] [default to null]
**bodyHtml** | **String** |  | [optional] [default to null]
**bodyText** | **String** |  | [optional] [default to null]
**timelineUrl** | **String** |  | [optional] [default to null]
**repository** | [**Repository**](Repository.md) |  | [optional] [default to null]
**performedViaGithubApp** | [**AllOfissuePerformedViaGithubApp**](AllOfissuePerformedViaGithubApp.md) |  | [optional] [default to null]
**authorAssociation** | **String** |  | [default to null]
**reactions** | [**ReactionRollup**](ReactionRollup.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

