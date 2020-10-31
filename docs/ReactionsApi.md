# swagger.api.ReactionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reactionsCreateForCommitComment**](ReactionsApi.md#reactionsCreateForCommitComment) | **POST** /repos/{owner}/{repo}/comments/{comment_id}/reactions | Create reaction for a commit comment
[**reactionsCreateForIssue**](ReactionsApi.md#reactionsCreateForIssue) | **POST** /repos/{owner}/{repo}/issues/{issue_number}/reactions | Create reaction for an issue
[**reactionsCreateForIssueComment**](ReactionsApi.md#reactionsCreateForIssueComment) | **POST** /repos/{owner}/{repo}/issues/comments/{comment_id}/reactions | Create reaction for an issue comment
[**reactionsCreateForPullRequestReviewComment**](ReactionsApi.md#reactionsCreateForPullRequestReviewComment) | **POST** /repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions | Create reaction for a pull request review comment
[**reactionsCreateForTeamDiscussionCommentInOrg**](ReactionsApi.md#reactionsCreateForTeamDiscussionCommentInOrg) | **POST** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions | Create reaction for a team discussion comment
[**reactionsCreateForTeamDiscussionCommentLegacy**](ReactionsApi.md#reactionsCreateForTeamDiscussionCommentLegacy) | **POST** /teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}/reactions | Create reaction for a team discussion comment (Legacy)
[**reactionsCreateForTeamDiscussionInOrg**](ReactionsApi.md#reactionsCreateForTeamDiscussionInOrg) | **POST** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions | Create reaction for a team discussion
[**reactionsCreateForTeamDiscussionLegacy**](ReactionsApi.md#reactionsCreateForTeamDiscussionLegacy) | **POST** /teams/{team_id}/discussions/{discussion_number}/reactions | Create reaction for a team discussion (Legacy)
[**reactionsDeleteForCommitComment**](ReactionsApi.md#reactionsDeleteForCommitComment) | **DELETE** /repos/{owner}/{repo}/comments/{comment_id}/reactions/{reaction_id} | Delete a commit comment reaction
[**reactionsDeleteForIssue**](ReactionsApi.md#reactionsDeleteForIssue) | **DELETE** /repos/{owner}/{repo}/issues/{issue_number}/reactions/{reaction_id} | Delete an issue reaction
[**reactionsDeleteForIssueComment**](ReactionsApi.md#reactionsDeleteForIssueComment) | **DELETE** /repos/{owner}/{repo}/issues/comments/{comment_id}/reactions/{reaction_id} | Delete an issue comment reaction
[**reactionsDeleteForPullRequestComment**](ReactionsApi.md#reactionsDeleteForPullRequestComment) | **DELETE** /repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions/{reaction_id} | Delete a pull request comment reaction
[**reactionsDeleteForTeamDiscussion**](ReactionsApi.md#reactionsDeleteForTeamDiscussion) | **DELETE** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions/{reaction_id} | Delete team discussion reaction
[**reactionsDeleteForTeamDiscussionComment**](ReactionsApi.md#reactionsDeleteForTeamDiscussionComment) | **DELETE** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions/{reaction_id} | Delete team discussion comment reaction
[**reactionsDeleteLegacy**](ReactionsApi.md#reactionsDeleteLegacy) | **DELETE** /reactions/{reaction_id} | Delete a reaction (Legacy)
[**reactionsListForCommitComment**](ReactionsApi.md#reactionsListForCommitComment) | **GET** /repos/{owner}/{repo}/comments/{comment_id}/reactions | List reactions for a commit comment
[**reactionsListForIssue**](ReactionsApi.md#reactionsListForIssue) | **GET** /repos/{owner}/{repo}/issues/{issue_number}/reactions | List reactions for an issue
[**reactionsListForIssueComment**](ReactionsApi.md#reactionsListForIssueComment) | **GET** /repos/{owner}/{repo}/issues/comments/{comment_id}/reactions | List reactions for an issue comment
[**reactionsListForPullRequestReviewComment**](ReactionsApi.md#reactionsListForPullRequestReviewComment) | **GET** /repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions | List reactions for a pull request review comment
[**reactionsListForTeamDiscussionCommentInOrg**](ReactionsApi.md#reactionsListForTeamDiscussionCommentInOrg) | **GET** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions | List reactions for a team discussion comment
[**reactionsListForTeamDiscussionCommentLegacy**](ReactionsApi.md#reactionsListForTeamDiscussionCommentLegacy) | **GET** /teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}/reactions | List reactions for a team discussion comment (Legacy)
[**reactionsListForTeamDiscussionInOrg**](ReactionsApi.md#reactionsListForTeamDiscussionInOrg) | **GET** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions | List reactions for a team discussion
[**reactionsListForTeamDiscussionLegacy**](ReactionsApi.md#reactionsListForTeamDiscussionLegacy) | **GET** /teams/{team_id}/discussions/{discussion_number}/reactions | List reactions for a team discussion (Legacy)

# **reactionsCreateForCommitComment**
> Reaction reactionsCreateForCommitComment(owner, repo, commentId, body)

Create reaction for a commit comment

Create a reaction to a [commit comment](https://developer.github.com/v3/repos/comments/). A response with a `Status: 200 OK` means that you already added the reaction type to this commit comment.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var body = new Body77(); // Body77 | 

try {
    var result = api_instance.reactionsCreateForCommitComment(owner, repo, commentId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsCreateForCommitComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **body** | [**Body77**](Body77.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsCreateForIssue**
> Reaction reactionsCreateForIssue(owner, repo, issueNumber, body)

Create reaction for an issue

Create a reaction to an [issue](https://developer.github.com/v3/issues/). A response with a `Status: 200 OK` means that you already added the reaction type to this issue.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var body = new Body110(); // Body110 | 

try {
    var result = api_instance.reactionsCreateForIssue(owner, repo, issueNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsCreateForIssue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **body** | [**Body110**](Body110.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsCreateForIssueComment**
> Reaction reactionsCreateForIssueComment(owner, repo, commentId, body)

Create reaction for an issue comment

Create a reaction to an [issue comment](https://developer.github.com/v3/issues/comments/). A response with a `Status: 200 OK` means that you already added the reaction type to this issue comment.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var body = new Body102(); // Body102 | 

try {
    var result = api_instance.reactionsCreateForIssueComment(owner, repo, commentId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsCreateForIssueComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **body** | [**Body102**](Body102.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsCreateForPullRequestReviewComment**
> Reaction reactionsCreateForPullRequestReviewComment(owner, repo, commentId, body)

Create reaction for a pull request review comment

Create a reaction to a [pull request review comment](https://developer.github.com/v3/pulls/comments/). A response with a `Status: 200 OK` means that you already added the reaction type to this pull request review comment.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var body = new Body123(); // Body123 | 

try {
    var result = api_instance.reactionsCreateForPullRequestReviewComment(owner, repo, commentId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsCreateForPullRequestReviewComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **body** | [**Body123**](Body123.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsCreateForTeamDiscussionCommentInOrg**
> Reaction reactionsCreateForTeamDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber, body)

Create reaction for a team discussion comment

Create a reaction to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a `Status: 200 OK` means that you already added the reaction type to this team discussion comment.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `POST /organizations/:org_id/team/:team_id/discussions/:discussion_number/comments/:comment_number/reactions`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 
var body = new Body48(); // Body48 | 

try {
    var result = api_instance.reactionsCreateForTeamDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsCreateForTeamDiscussionCommentInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 
 **body** | [**Body48**](Body48.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsCreateForTeamDiscussionCommentLegacy**
> Reaction reactionsCreateForTeamDiscussionCommentLegacy(teamId, discussionNumber, commentNumber, body)

Create reaction for a team discussion comment (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`Create reaction for a team discussion comment`](https://developer.github.com/v3/reactions/#create-reaction-for-a-team-discussion-comment) endpoint.  Create a reaction to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a `Status: 200 OK` means that you already added the reaction type to this team discussion comment.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 
var body = new Body157(); // Body157 | 

try {
    var result = api_instance.reactionsCreateForTeamDiscussionCommentLegacy(teamId, discussionNumber, commentNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsCreateForTeamDiscussionCommentLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 
 **body** | [**Body157**](Body157.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsCreateForTeamDiscussionInOrg**
> Reaction reactionsCreateForTeamDiscussionInOrg(org, teamSlug, discussionNumber, body)

Create reaction for a team discussion

Create a reaction to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a `Status: 200 OK` means that you already added the reaction type to this team discussion.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `POST /organizations/:org_id/team/:team_id/discussions/:discussion_number/reactions`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var body = new Body49(); // Body49 | 

try {
    var result = api_instance.reactionsCreateForTeamDiscussionInOrg(org, teamSlug, discussionNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsCreateForTeamDiscussionInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **body** | [**Body49**](Body49.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsCreateForTeamDiscussionLegacy**
> Reaction reactionsCreateForTeamDiscussionLegacy(teamId, discussionNumber, body)

Create reaction for a team discussion (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`Create reaction for a team discussion`](https://developer.github.com/v3/reactions/#create-reaction-for-a-team-discussion) endpoint.  Create a reaction to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a `Status: 200 OK` means that you already added the reaction type to this team discussion.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var body = new Body158(); // Body158 | 

try {
    var result = api_instance.reactionsCreateForTeamDiscussionLegacy(teamId, discussionNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsCreateForTeamDiscussionLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **body** | [**Body158**](Body158.md)|  | [optional] 

### Return type

[**Reaction**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsDeleteForCommitComment**
> reactionsDeleteForCommitComment(owner, repo, commentId, reactionId)

Delete a commit comment reaction

**Note:** You can also specify a repository by `repository_id` using the route `DELETE /repositories/:repository_id/comments/:comment_id/reactions/:reaction_id`.  Delete a reaction to a [commit comment](https://developer.github.com/v3/repos/comments/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var reactionId = 56; // int | 

try {
    api_instance.reactionsDeleteForCommitComment(owner, repo, commentId, reactionId);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsDeleteForCommitComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **reactionId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsDeleteForIssue**
> reactionsDeleteForIssue(owner, repo, issueNumber, reactionId)

Delete an issue reaction

**Note:** You can also specify a repository by `repository_id` using the route `DELETE /repositories/:repository_id/issues/:issue_number/reactions/:reaction_id`.  Delete a reaction to an [issue](https://developer.github.com/v3/issues/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var reactionId = 56; // int | 

try {
    api_instance.reactionsDeleteForIssue(owner, repo, issueNumber, reactionId);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsDeleteForIssue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **reactionId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsDeleteForIssueComment**
> reactionsDeleteForIssueComment(owner, repo, commentId, reactionId)

Delete an issue comment reaction

**Note:** You can also specify a repository by `repository_id` using the route `DELETE delete /repositories/:repository_id/issues/comments/:comment_id/reactions/:reaction_id`.  Delete a reaction to an [issue comment](https://developer.github.com/v3/issues/comments/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var reactionId = 56; // int | 

try {
    api_instance.reactionsDeleteForIssueComment(owner, repo, commentId, reactionId);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsDeleteForIssueComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **reactionId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsDeleteForPullRequestComment**
> reactionsDeleteForPullRequestComment(owner, repo, commentId, reactionId)

Delete a pull request comment reaction

**Note:** You can also specify a repository by `repository_id` using the route `DELETE /repositories/:repository_id/pulls/comments/:comment_id/reactions/:reaction_id.`  Delete a reaction to a [pull request review comment](https://developer.github.com/v3/pulls/comments/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var reactionId = 56; // int | 

try {
    api_instance.reactionsDeleteForPullRequestComment(owner, repo, commentId, reactionId);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsDeleteForPullRequestComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **reactionId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsDeleteForTeamDiscussion**
> reactionsDeleteForTeamDiscussion(org, teamSlug, discussionNumber, reactionId)

Delete team discussion reaction

**Note:** You can also specify a team or organization with `team_id` and `org_id` using the route `DELETE /organizations/:org_id/team/:team_id/discussions/:discussion_number/reactions/:reaction_id`.  Delete a reaction to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var reactionId = 56; // int | 

try {
    api_instance.reactionsDeleteForTeamDiscussion(org, teamSlug, discussionNumber, reactionId);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsDeleteForTeamDiscussion: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **reactionId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsDeleteForTeamDiscussionComment**
> reactionsDeleteForTeamDiscussionComment(org, teamSlug, discussionNumber, commentNumber, reactionId)

Delete team discussion comment reaction

**Note:** You can also specify a team or organization with `team_id` and `org_id` using the route `DELETE /organizations/:org_id/team/:team_id/discussions/:discussion_number/comments/:comment_number/reactions/:reaction_id`.  Delete a reaction to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 
var reactionId = 56; // int | 

try {
    api_instance.reactionsDeleteForTeamDiscussionComment(org, teamSlug, discussionNumber, commentNumber, reactionId);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsDeleteForTeamDiscussionComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 
 **reactionId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsDeleteLegacy**
> reactionsDeleteLegacy(reactionId)

Delete a reaction (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Reactions API. We recommend migrating your existing code to use the new delete reactions endpoints. For more information, see this [blog post](https://developer.github.com/changes/2020-02-26-new-delete-reactions-endpoints/).  OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/), when deleting a [team discussion](https://developer.github.com/v3/teams/discussions/) or [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var reactionId = 56; // int | 

try {
    api_instance.reactionsDeleteLegacy(reactionId);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsDeleteLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reactionId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsListForCommitComment**
> List<Reaction> reactionsListForCommitComment(owner, repo, commentId, content, perPage, page)

List reactions for a commit comment

List the reactions to a [commit comment](https://developer.github.com/v3/repos/comments/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var content = content_example; // String | Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a commit comment.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reactionsListForCommitComment(owner, repo, commentId, content, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsListForCommitComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **content** | **String**| Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a commit comment. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsListForIssue**
> List<Reaction> reactionsListForIssue(owner, repo, issueNumber, content, perPage, page)

List reactions for an issue

List the reactions to an [issue](https://developer.github.com/v3/issues/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var content = content_example; // String | Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to an issue.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reactionsListForIssue(owner, repo, issueNumber, content, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsListForIssue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **content** | **String**| Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to an issue. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsListForIssueComment**
> List<Reaction> reactionsListForIssueComment(owner, repo, commentId, content, perPage, page)

List reactions for an issue comment

List the reactions to an [issue comment](https://developer.github.com/v3/issues/comments/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var content = content_example; // String | Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to an issue comment.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reactionsListForIssueComment(owner, repo, commentId, content, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsListForIssueComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **content** | **String**| Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to an issue comment. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsListForPullRequestReviewComment**
> List<Reaction> reactionsListForPullRequestReviewComment(owner, repo, commentId, content, perPage, page)

List reactions for a pull request review comment

List the reactions to a [pull request review comment](https://developer.github.com/v3/pulls/comments/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var content = content_example; // String | Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a pull request review comment.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reactionsListForPullRequestReviewComment(owner, repo, commentId, content, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsListForPullRequestReviewComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **content** | **String**| Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a pull request review comment. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsListForTeamDiscussionCommentInOrg**
> List<Reaction> reactionsListForTeamDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber, content, perPage, page)

List reactions for a team discussion comment

List the reactions to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/:org_id/team/:team_id/discussions/:discussion_number/comments/:comment_number/reactions`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 
var content = content_example; // String | Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a team discussion comment.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reactionsListForTeamDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber, content, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsListForTeamDiscussionCommentInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 
 **content** | **String**| Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a team discussion comment. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsListForTeamDiscussionCommentLegacy**
> List<Reaction> reactionsListForTeamDiscussionCommentLegacy(teamId, discussionNumber, commentNumber, content, perPage, page)

List reactions for a team discussion comment (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List reactions for a team discussion comment`](https://developer.github.com/v3/reactions/#list-reactions-for-a-team-discussion-comment) endpoint.  List the reactions to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 
var content = content_example; // String | Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a team discussion comment.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reactionsListForTeamDiscussionCommentLegacy(teamId, discussionNumber, commentNumber, content, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsListForTeamDiscussionCommentLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 
 **content** | **String**| Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a team discussion comment. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsListForTeamDiscussionInOrg**
> List<Reaction> reactionsListForTeamDiscussionInOrg(org, teamSlug, discussionNumber, content, perPage, page)

List reactions for a team discussion

List the reactions to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/:org_id/team/:team_id/discussions/:discussion_number/reactions`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var content = content_example; // String | Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a team discussion.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reactionsListForTeamDiscussionInOrg(org, teamSlug, discussionNumber, content, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsListForTeamDiscussionInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **content** | **String**| Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a team discussion. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reactionsListForTeamDiscussionLegacy**
> List<Reaction> reactionsListForTeamDiscussionLegacy(teamId, discussionNumber, content, perPage, page)

List reactions for a team discussion (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List reactions for a team discussion`](https://developer.github.com/v3/reactions/#list-reactions-for-a-team-discussion) endpoint.  List the reactions to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReactionsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var content = content_example; // String | Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a team discussion.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reactionsListForTeamDiscussionLegacy(teamId, discussionNumber, content, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReactionsApi->reactionsListForTeamDiscussionLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **content** | **String**| Returns a single [reaction type](https://developer.github.com/v3/reactions/#reaction-types). Omit this parameter to list all reactions to a team discussion. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Reaction>**](Reaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

