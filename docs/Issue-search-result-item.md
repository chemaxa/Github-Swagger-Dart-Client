# swagger.model.IssueSearchResultItem

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [default to null]
**repositoryUrl** | **String** |  | [default to null]
**labelsUrl** | **String** |  | [default to null]
**commentsUrl** | **String** |  | [default to null]
**eventsUrl** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**id** | **int** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**number** | **int** |  | [default to null]
**title** | **String** |  | [default to null]
**locked** | **bool** |  | [default to null]
**activeLockReason** | **String** |  | [optional] [default to null]
**assignees** | [**List&lt;SimpleUser&gt;**](SimpleUser.md) |  | [optional] [default to []]
**user** | [**AllOfissueSearchResultItemUser**](AllOfissueSearchResultItemUser.md) |  | [default to null]
**labels** | [**List&lt;IssuesearchresultitemLabels&gt;**](IssuesearchresultitemLabels.md) |  | [default to []]
**state** | **String** |  | [default to null]
**assignee** | [**AllOfissueSearchResultItemAssignee**](AllOfissueSearchResultItemAssignee.md) |  | [default to null]
**milestone** | [**AllOfissueSearchResultItemMilestone**](AllOfissueSearchResultItemMilestone.md) |  | [default to null]
**comments** | **int** |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**closedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**textMatches** | [**SearchResultTextMatches**](SearchResultTextMatches.md) |  | [optional] [default to null]
**pullRequest** | [**IssuesimplePullRequest**](IssuesimplePullRequest.md) |  | [optional] [default to null]
**body** | **String** |  | [optional] [default to null]
**score** | **int** |  | [default to null]
**authorAssociation** | **String** |  | [default to null]
**draft** | **bool** |  | [optional] [default to null]
**repository** | [**Repository**](Repository.md) |  | [optional] [default to null]
**bodyHtml** | **String** |  | [optional] [default to null]
**bodyText** | **String** |  | [optional] [default to null]
**timelineUrl** | **String** |  | [optional] [default to null]
**performedViaGithubApp** | [**AllOfissueSearchResultItemPerformedViaGithubApp**](AllOfissueSearchResultItemPerformedViaGithubApp.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

