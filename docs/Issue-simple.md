# swagger.model.IssueSimple

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**url** | **String** |  | [default to null]
**repositoryUrl** | **String** |  | [default to null]
**labelsUrl** | **String** |  | [default to null]
**commentsUrl** | **String** |  | [default to null]
**eventsUrl** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**number** | **int** |  | [default to null]
**state** | **String** |  | [default to null]
**title** | **String** |  | [default to null]
**body** | **String** |  | [optional] [default to null]
**user** | [**AllOfissueSimpleUser**](AllOfissueSimpleUser.md) |  | [default to null]
**labels** | [**List&lt;IssuesimpleLabels&gt;**](IssuesimpleLabels.md) |  | [default to []]
**assignee** | [**AllOfissueSimpleAssignee**](AllOfissueSimpleAssignee.md) |  | [default to null]
**assignees** | [**List&lt;SimpleUser&gt;**](SimpleUser.md) |  | [optional] [default to []]
**milestone** | [**AllOfissueSimpleMilestone**](AllOfissueSimpleMilestone.md) |  | [default to null]
**locked** | **bool** |  | [default to null]
**activeLockReason** | **String** |  | [optional] [default to null]
**comments** | **int** |  | [default to null]
**pullRequest** | [**IssuesimplePullRequest**](IssuesimplePullRequest.md) |  | [optional] [default to null]
**closedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**authorAssociation** | **String** |  | [default to null]
**bodyHtml** | **String** |  | [optional] [default to null]
**bodyText** | **String** |  | [optional] [default to null]
**timelineUrl** | **String** |  | [optional] [default to null]
**repository** | [**Repository**](Repository.md) |  | [optional] [default to null]
**performedViaGithubApp** | [**AllOfissueSimplePerformedViaGithubApp**](AllOfissueSimplePerformedViaGithubApp.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

