# swagger.api.IssuesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**issuesAddAssignees**](IssuesApi.md#issuesAddAssignees) | **POST** /repos/{owner}/{repo}/issues/{issue_number}/assignees | Add assignees to an issue
[**issuesAddLabels**](IssuesApi.md#issuesAddLabels) | **POST** /repos/{owner}/{repo}/issues/{issue_number}/labels | Add labels to an issue
[**issuesCheckUserCanBeAssigned**](IssuesApi.md#issuesCheckUserCanBeAssigned) | **GET** /repos/{owner}/{repo}/assignees/{assignee} | Check if a user can be assigned
[**issuesCreate**](IssuesApi.md#issuesCreate) | **POST** /repos/{owner}/{repo}/issues | Create an issue
[**issuesCreateComment**](IssuesApi.md#issuesCreateComment) | **POST** /repos/{owner}/{repo}/issues/{issue_number}/comments | Create an issue comment
[**issuesCreateLabel**](IssuesApi.md#issuesCreateLabel) | **POST** /repos/{owner}/{repo}/labels | Create a label
[**issuesCreateMilestone**](IssuesApi.md#issuesCreateMilestone) | **POST** /repos/{owner}/{repo}/milestones | Create a milestone
[**issuesDeleteComment**](IssuesApi.md#issuesDeleteComment) | **DELETE** /repos/{owner}/{repo}/issues/comments/{comment_id} | Delete an issue comment
[**issuesDeleteLabel**](IssuesApi.md#issuesDeleteLabel) | **DELETE** /repos/{owner}/{repo}/labels/{name} | Delete a label
[**issuesDeleteMilestone**](IssuesApi.md#issuesDeleteMilestone) | **DELETE** /repos/{owner}/{repo}/milestones/{milestone_number} | Delete a milestone
[**issuesGet**](IssuesApi.md#issuesGet) | **GET** /repos/{owner}/{repo}/issues/{issue_number} | Get an issue
[**issuesGetComment**](IssuesApi.md#issuesGetComment) | **GET** /repos/{owner}/{repo}/issues/comments/{comment_id} | Get an issue comment
[**issuesGetEvent**](IssuesApi.md#issuesGetEvent) | **GET** /repos/{owner}/{repo}/issues/events/{event_id} | Get an issue event
[**issuesGetLabel**](IssuesApi.md#issuesGetLabel) | **GET** /repos/{owner}/{repo}/labels/{name} | Get a label
[**issuesGetMilestone**](IssuesApi.md#issuesGetMilestone) | **GET** /repos/{owner}/{repo}/milestones/{milestone_number} | Get a milestone
[**issuesList**](IssuesApi.md#issuesList) | **GET** /issues | List issues assigned to the authenticated user
[**issuesListAssignees**](IssuesApi.md#issuesListAssignees) | **GET** /repos/{owner}/{repo}/assignees | List assignees
[**issuesListComments**](IssuesApi.md#issuesListComments) | **GET** /repos/{owner}/{repo}/issues/{issue_number}/comments | List issue comments
[**issuesListCommentsForRepo**](IssuesApi.md#issuesListCommentsForRepo) | **GET** /repos/{owner}/{repo}/issues/comments | List issue comments for a repository
[**issuesListEvents**](IssuesApi.md#issuesListEvents) | **GET** /repos/{owner}/{repo}/issues/{issue_number}/events | List issue events
[**issuesListEventsForRepo**](IssuesApi.md#issuesListEventsForRepo) | **GET** /repos/{owner}/{repo}/issues/events | List issue events for a repository
[**issuesListEventsForTimeline**](IssuesApi.md#issuesListEventsForTimeline) | **GET** /repos/{owner}/{repo}/issues/{issue_number}/timeline | List timeline events for an issue
[**issuesListForAuthenticatedUser**](IssuesApi.md#issuesListForAuthenticatedUser) | **GET** /user/issues | List user account issues assigned to the authenticated user
[**issuesListForOrg**](IssuesApi.md#issuesListForOrg) | **GET** /orgs/{org}/issues | List organization issues assigned to the authenticated user
[**issuesListForRepo**](IssuesApi.md#issuesListForRepo) | **GET** /repos/{owner}/{repo}/issues | List repository issues
[**issuesListLabelsForMilestone**](IssuesApi.md#issuesListLabelsForMilestone) | **GET** /repos/{owner}/{repo}/milestones/{milestone_number}/labels | List labels for issues in a milestone
[**issuesListLabelsForRepo**](IssuesApi.md#issuesListLabelsForRepo) | **GET** /repos/{owner}/{repo}/labels | List labels for a repository
[**issuesListLabelsOnIssue**](IssuesApi.md#issuesListLabelsOnIssue) | **GET** /repos/{owner}/{repo}/issues/{issue_number}/labels | List labels for an issue
[**issuesListMilestones**](IssuesApi.md#issuesListMilestones) | **GET** /repos/{owner}/{repo}/milestones | List milestones
[**issuesLock**](IssuesApi.md#issuesLock) | **PUT** /repos/{owner}/{repo}/issues/{issue_number}/lock | Lock an issue
[**issuesRemoveAllLabels**](IssuesApi.md#issuesRemoveAllLabels) | **DELETE** /repos/{owner}/{repo}/issues/{issue_number}/labels | Remove all labels from an issue
[**issuesRemoveAssignees**](IssuesApi.md#issuesRemoveAssignees) | **DELETE** /repos/{owner}/{repo}/issues/{issue_number}/assignees | Remove assignees from an issue
[**issuesRemoveLabel**](IssuesApi.md#issuesRemoveLabel) | **DELETE** /repos/{owner}/{repo}/issues/{issue_number}/labels/{name} | Remove a label from an issue
[**issuesSetLabels**](IssuesApi.md#issuesSetLabels) | **PUT** /repos/{owner}/{repo}/issues/{issue_number}/labels | Set labels for an issue
[**issuesUnlock**](IssuesApi.md#issuesUnlock) | **DELETE** /repos/{owner}/{repo}/issues/{issue_number}/lock | Unlock an issue
[**issuesUpdate**](IssuesApi.md#issuesUpdate) | **PATCH** /repos/{owner}/{repo}/issues/{issue_number} | Update an issue
[**issuesUpdateComment**](IssuesApi.md#issuesUpdateComment) | **PATCH** /repos/{owner}/{repo}/issues/comments/{comment_id} | Update an issue comment
[**issuesUpdateLabel**](IssuesApi.md#issuesUpdateLabel) | **PATCH** /repos/{owner}/{repo}/labels/{name} | Update a label
[**issuesUpdateMilestone**](IssuesApi.md#issuesUpdateMilestone) | **PATCH** /repos/{owner}/{repo}/milestones/{milestone_number} | Update a milestone

# **issuesAddAssignees**
> IssueSimple issuesAddAssignees(owner, repo, issueNumber, body)

Add assignees to an issue

Adds up to 10 assignees to an issue. Users already assigned to an issue are not replaced.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var body = new Body104(); // Body104 | 

try {
    var result = api_instance.issuesAddAssignees(owner, repo, issueNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesAddAssignees: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **body** | [**Body104**](Body104.md)|  | [optional] 

### Return type

[**IssueSimple**](IssueSimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesAddLabels**
> List<Label> issuesAddLabels(owner, repo, issueNumber, body)

Add labels to an issue

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var body = new Body108(); // Body108 | 

try {
    var result = api_instance.issuesAddLabels(owner, repo, issueNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesAddLabels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **body** | [**Body108**](Body108.md)|  | [optional] 

### Return type

[**List<Label>**](Label.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesCheckUserCanBeAssigned**
> issuesCheckUserCanBeAssigned(owner, repo, assignee)

Check if a user can be assigned

Checks if a user has permission to be assigned to an issue in this repository.  If the `assignee` can be assigned to issues in the repository, a `204` header with no content is returned.  Otherwise a `404` status code is returned.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var assignee = assignee_example; // String | 

try {
    api_instance.issuesCheckUserCanBeAssigned(owner, repo, assignee);
} catch (e) {
    print("Exception when calling IssuesApi->issuesCheckUserCanBeAssigned: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **assignee** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesCreate**
> Issue issuesCreate(owner, repo, body)

Create an issue

Any user with pull access to a repository can create an issue. If [issues are disabled in the repository](https://help.github.com/articles/disabling-issues/), the API returns a `410 Gone` status.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body100(); // Body100 | 

try {
    var result = api_instance.issuesCreate(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body100**](Body100.md)|  | [optional] 

### Return type

[**Issue**](Issue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesCreateComment**
> IssueComment issuesCreateComment(owner, repo, issueNumber, body)

Create an issue comment

This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var body = new Body106(); // Body106 | 

try {
    var result = api_instance.issuesCreateComment(owner, repo, issueNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesCreateComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **body** | [**Body106**](Body106.md)|  | [optional] 

### Return type

[**IssueComment**](IssueComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesCreateLabel**
> Label issuesCreateLabel(owner, repo, body)

Create a label

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body112(); // Body112 | 

try {
    var result = api_instance.issuesCreateLabel(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesCreateLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body112**](Body112.md)|  | [optional] 

### Return type

[**Label**](Label.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesCreateMilestone**
> Milestone issuesCreateMilestone(owner, repo, body)

Create a milestone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body115(); // Body115 | 

try {
    var result = api_instance.issuesCreateMilestone(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesCreateMilestone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body115**](Body115.md)|  | [optional] 

### Return type

[**Milestone**](Milestone.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesDeleteComment**
> issuesDeleteComment(owner, repo, commentId)

Delete an issue comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter

try {
    api_instance.issuesDeleteComment(owner, repo, commentId);
} catch (e) {
    print("Exception when calling IssuesApi->issuesDeleteComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesDeleteLabel**
> issuesDeleteLabel(owner, repo, name)

Delete a label

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var name = name_example; // String | 

try {
    api_instance.issuesDeleteLabel(owner, repo, name);
} catch (e) {
    print("Exception when calling IssuesApi->issuesDeleteLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **name** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesDeleteMilestone**
> issuesDeleteMilestone(owner, repo, milestoneNumber)

Delete a milestone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var milestoneNumber = 56; // int | milestone_number parameter

try {
    api_instance.issuesDeleteMilestone(owner, repo, milestoneNumber);
} catch (e) {
    print("Exception when calling IssuesApi->issuesDeleteMilestone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **milestoneNumber** | **int**| milestone_number parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesGet**
> Issue issuesGet(owner, repo, issueNumber)

Get an issue

The API returns a [`301 Moved Permanently` status](https://developer.github.com/v3/#http-redirects) if the issue was [transferred](https://help.github.com/articles/transferring-an-issue-to-another-repository/) to another repository. If the issue was transferred to or deleted from a repository where the authenticated user lacks read access, the API returns a `404 Not Found` status. If the issue was deleted from a repository where the authenticated user has read access, the API returns a `410 Gone` status. To receive webhook events for transferred and deleted issues, subscribe to the [`issues`](https://developer.github.com/webhooks/event-payloads/#issues) webhook.  **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://developer.github.com/v3/pulls/#list-pull-requests)\" endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter

try {
    var result = api_instance.issuesGet(owner, repo, issueNumber);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 

### Return type

[**Issue**](Issue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesGetComment**
> IssueComment issuesGetComment(owner, repo, commentId)

Get an issue comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter

try {
    var result = api_instance.issuesGetComment(owner, repo, commentId);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesGetComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 

### Return type

[**IssueComment**](IssueComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesGetEvent**
> IssueEvent issuesGetEvent(owner, repo, eventId)

Get an issue event

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var eventId = 56; // int | 

try {
    var result = api_instance.issuesGetEvent(owner, repo, eventId);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesGetEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **eventId** | **int**|  | 

### Return type

[**IssueEvent**](IssueEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesGetLabel**
> Label issuesGetLabel(owner, repo, name)

Get a label

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var name = name_example; // String | 

try {
    var result = api_instance.issuesGetLabel(owner, repo, name);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesGetLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **name** | **String**|  | 

### Return type

[**Label**](Label.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesGetMilestone**
> Milestone issuesGetMilestone(owner, repo, milestoneNumber)

Get a milestone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var milestoneNumber = 56; // int | milestone_number parameter

try {
    var result = api_instance.issuesGetMilestone(owner, repo, milestoneNumber);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesGetMilestone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **milestoneNumber** | **int**| milestone_number parameter | 

### Return type

[**Milestone**](Milestone.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesList**
> List<Issue> issuesList(filter, state, labels, sort, direction, since, collab, orgs, owned, pulls, perPage, page)

List issues assigned to the authenticated user

List issues assigned to the authenticated user across all visible repositories including owned repositories, member repositories, and organization repositories. You can use the `filter` query parameter to fetch issues that are not necessarily assigned to you. See the [Parameters table](https://developer.github.com/v3/issues/#parameters) for more information.   **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://developer.github.com/v3/pulls/#list-pull-requests)\" endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var filter = filter_example; // String | Indicates which sorts of issues to return. Can be one of:   \\* `assigned`: Issues assigned to you   \\* `created`: Issues created by you   \\* `mentioned`: Issues mentioning you   \\* `subscribed`: Issues you're subscribed to updates for   \\* `all`: All issues the authenticated user can see, regardless of participation or creation
var state = state_example; // String | Indicates the state of the issues to return. Can be either `open`, `closed`, or `all`.
var labels = labels_example; // String | A list of comma separated label names. Example: `bug,ui,@high`
var sort = sort_example; // String | What to sort results by. Can be either `created`, `updated`, `comments`.
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var collab = true; // bool | 
var orgs = true; // bool | 
var owned = true; // bool | 
var pulls = true; // bool | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesList(filter, state, labels, sort, direction, since, collab, orgs, owned, pulls, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| Indicates which sorts of issues to return. Can be one of:   \\* &#x60;assigned&#x60;: Issues assigned to you   \\* &#x60;created&#x60;: Issues created by you   \\* &#x60;mentioned&#x60;: Issues mentioning you   \\* &#x60;subscribed&#x60;: Issues you&#x27;re subscribed to updates for   \\* &#x60;all&#x60;: All issues the authenticated user can see, regardless of participation or creation | [optional] [default to assigned]
 **state** | **String**| Indicates the state of the issues to return. Can be either &#x60;open&#x60;, &#x60;closed&#x60;, or &#x60;all&#x60;. | [optional] [default to open]
 **labels** | **String**| A list of comma separated label names. Example: &#x60;bug,ui,@high&#x60; | [optional] 
 **sort** | **String**| What to sort results by. Can be either &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;comments&#x60;. | [optional] [default to created]
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **collab** | **bool**|  | [optional] 
 **orgs** | **bool**|  | [optional] 
 **owned** | **bool**|  | [optional] 
 **pulls** | **bool**|  | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Issue>**](Issue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListAssignees**
> List<SimpleUser> issuesListAssignees(owner, repo, perPage, page)

List assignees

Lists the [available assignees](https://help.github.com/articles/assigning-issues-and-pull-requests-to-other-github-users/) for issues in a repository.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListAssignees(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListAssignees: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListComments**
> List<IssueComment> issuesListComments(owner, repo, issueNumber, since, perPage, page)

List issue comments

Issue Comments are ordered by ascending ID.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListComments(owner, repo, issueNumber, since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListComments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<IssueComment>**](IssueComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListCommentsForRepo**
> List<IssueComment> issuesListCommentsForRepo(owner, repo, sort, direction, since, perPage, page)

List issue comments for a repository

By default, Issue Comments are ordered by ascending ID.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var sort = sort_example; // String | One of `created` (when the repository was starred) or `updated` (when it was last pushed to).
var direction = direction_example; // String | Either `asc` or `desc`. Ignored without the `sort` parameter.
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListCommentsForRepo(owner, repo, sort, direction, since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListCommentsForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **sort** | **String**| One of &#x60;created&#x60; (when the repository was starred) or &#x60;updated&#x60; (when it was last pushed to). | [optional] [default to created]
 **direction** | **String**| Either &#x60;asc&#x60; or &#x60;desc&#x60;. Ignored without the &#x60;sort&#x60; parameter. | [optional] 
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<IssueComment>**](IssueComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListEvents**
> List<IssueEventForIssue> issuesListEvents(owner, repo, issueNumber, perPage, page)

List issue events

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListEvents(owner, repo, issueNumber, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<IssueEventForIssue>**](IssueEventForIssue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListEventsForRepo**
> List<IssueEvent> issuesListEventsForRepo(owner, repo, perPage, page)

List issue events for a repository

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListEventsForRepo(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListEventsForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<IssueEvent>**](IssueEvent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListEventsForTimeline**
> List<IssueEventForIssue> issuesListEventsForTimeline(owner, repo, issueNumber, perPage, page)

List timeline events for an issue

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListEventsForTimeline(owner, repo, issueNumber, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListEventsForTimeline: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<IssueEventForIssue>**](IssueEventForIssue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListForAuthenticatedUser**
> List<Issue> issuesListForAuthenticatedUser(filter, state, labels, sort, direction, since, perPage, page)

List user account issues assigned to the authenticated user

List issues across owned and member repositories assigned to the authenticated user.  **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://developer.github.com/v3/pulls/#list-pull-requests)\" endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var filter = filter_example; // String | Indicates which sorts of issues to return. Can be one of:   \\* `assigned`: Issues assigned to you   \\* `created`: Issues created by you   \\* `mentioned`: Issues mentioning you   \\* `subscribed`: Issues you're subscribed to updates for   \\* `all`: All issues the authenticated user can see, regardless of participation or creation
var state = state_example; // String | Indicates the state of the issues to return. Can be either `open`, `closed`, or `all`.
var labels = labels_example; // String | A list of comma separated label names. Example: `bug,ui,@high`
var sort = sort_example; // String | What to sort results by. Can be either `created`, `updated`, `comments`.
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListForAuthenticatedUser(filter, state, labels, sort, direction, since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| Indicates which sorts of issues to return. Can be one of:   \\* &#x60;assigned&#x60;: Issues assigned to you   \\* &#x60;created&#x60;: Issues created by you   \\* &#x60;mentioned&#x60;: Issues mentioning you   \\* &#x60;subscribed&#x60;: Issues you&#x27;re subscribed to updates for   \\* &#x60;all&#x60;: All issues the authenticated user can see, regardless of participation or creation | [optional] [default to assigned]
 **state** | **String**| Indicates the state of the issues to return. Can be either &#x60;open&#x60;, &#x60;closed&#x60;, or &#x60;all&#x60;. | [optional] [default to open]
 **labels** | **String**| A list of comma separated label names. Example: &#x60;bug,ui,@high&#x60; | [optional] 
 **sort** | **String**| What to sort results by. Can be either &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;comments&#x60;. | [optional] [default to created]
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Issue>**](Issue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListForOrg**
> List<Issue> issuesListForOrg(org, filter, state, labels, sort, direction, since, perPage, page)

List organization issues assigned to the authenticated user

List issues in an organization assigned to the authenticated user.  **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://developer.github.com/v3/pulls/#list-pull-requests)\" endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var org = org_example; // String | 
var filter = filter_example; // String | Indicates which sorts of issues to return. Can be one of:   \\* `assigned`: Issues assigned to you   \\* `created`: Issues created by you   \\* `mentioned`: Issues mentioning you   \\* `subscribed`: Issues you're subscribed to updates for   \\* `all`: All issues the authenticated user can see, regardless of participation or creation
var state = state_example; // String | Indicates the state of the issues to return. Can be either `open`, `closed`, or `all`.
var labels = labels_example; // String | A list of comma separated label names. Example: `bug,ui,@high`
var sort = sort_example; // String | What to sort results by. Can be either `created`, `updated`, `comments`.
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListForOrg(org, filter, state, labels, sort, direction, since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **filter** | **String**| Indicates which sorts of issues to return. Can be one of:   \\* &#x60;assigned&#x60;: Issues assigned to you   \\* &#x60;created&#x60;: Issues created by you   \\* &#x60;mentioned&#x60;: Issues mentioning you   \\* &#x60;subscribed&#x60;: Issues you&#x27;re subscribed to updates for   \\* &#x60;all&#x60;: All issues the authenticated user can see, regardless of participation or creation | [optional] [default to assigned]
 **state** | **String**| Indicates the state of the issues to return. Can be either &#x60;open&#x60;, &#x60;closed&#x60;, or &#x60;all&#x60;. | [optional] [default to open]
 **labels** | **String**| A list of comma separated label names. Example: &#x60;bug,ui,@high&#x60; | [optional] 
 **sort** | **String**| What to sort results by. Can be either &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;comments&#x60;. | [optional] [default to created]
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Issue>**](Issue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListForRepo**
> List<IssueSimple> issuesListForRepo(owner, repo, milestone, state, assignee, creator, mentioned, labels, sort, direction, since, perPage, page)

List repository issues

List issues in a repository.  **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key. Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://developer.github.com/v3/pulls/#list-pull-requests)\" endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var milestone = milestone_example; // String | If an `integer` is passed, it should refer to a milestone by its `number` field. If the string `*` is passed, issues with any milestone are accepted. If the string `none` is passed, issues without milestones are returned.
var state = state_example; // String | Indicates the state of the issues to return. Can be either `open`, `closed`, or `all`.
var assignee = assignee_example; // String | Can be the name of a user. Pass in `none` for issues with no assigned user, and `*` for issues assigned to any user.
var creator = creator_example; // String | The user that created the issue.
var mentioned = mentioned_example; // String | A user that's mentioned in the issue.
var labels = labels_example; // String | A list of comma separated label names. Example: `bug,ui,@high`
var sort = sort_example; // String | What to sort results by. Can be either `created`, `updated`, `comments`.
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListForRepo(owner, repo, milestone, state, assignee, creator, mentioned, labels, sort, direction, since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **milestone** | **String**| If an &#x60;integer&#x60; is passed, it should refer to a milestone by its &#x60;number&#x60; field. If the string &#x60;*&#x60; is passed, issues with any milestone are accepted. If the string &#x60;none&#x60; is passed, issues without milestones are returned. | [optional] 
 **state** | **String**| Indicates the state of the issues to return. Can be either &#x60;open&#x60;, &#x60;closed&#x60;, or &#x60;all&#x60;. | [optional] [default to open]
 **assignee** | **String**| Can be the name of a user. Pass in &#x60;none&#x60; for issues with no assigned user, and &#x60;*&#x60; for issues assigned to any user. | [optional] 
 **creator** | **String**| The user that created the issue. | [optional] 
 **mentioned** | **String**| A user that&#x27;s mentioned in the issue. | [optional] 
 **labels** | **String**| A list of comma separated label names. Example: &#x60;bug,ui,@high&#x60; | [optional] 
 **sort** | **String**| What to sort results by. Can be either &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;comments&#x60;. | [optional] [default to created]
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<IssueSimple>**](IssueSimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListLabelsForMilestone**
> List<Label> issuesListLabelsForMilestone(owner, repo, milestoneNumber, perPage, page)

List labels for issues in a milestone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var milestoneNumber = 56; // int | milestone_number parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListLabelsForMilestone(owner, repo, milestoneNumber, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListLabelsForMilestone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **milestoneNumber** | **int**| milestone_number parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Label>**](Label.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListLabelsForRepo**
> List<Label> issuesListLabelsForRepo(owner, repo, perPage, page)

List labels for a repository

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListLabelsForRepo(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListLabelsForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Label>**](Label.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListLabelsOnIssue**
> List<Label> issuesListLabelsOnIssue(owner, repo, issueNumber, perPage, page)

List labels for an issue

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListLabelsOnIssue(owner, repo, issueNumber, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListLabelsOnIssue: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Label>**](Label.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesListMilestones**
> List<Milestone> issuesListMilestones(owner, repo, state, sort, direction, perPage, page)

List milestones

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var state = state_example; // String | The state of the milestone. Either `open`, `closed`, or `all`.
var sort = sort_example; // String | What to sort results by. Either `due_on` or `completeness`.
var direction = direction_example; // String | The direction of the sort. Either `asc` or `desc`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.issuesListMilestones(owner, repo, state, sort, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesListMilestones: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **state** | **String**| The state of the milestone. Either &#x60;open&#x60;, &#x60;closed&#x60;, or &#x60;all&#x60;. | [optional] [default to open]
 **sort** | **String**| What to sort results by. Either &#x60;due_on&#x60; or &#x60;completeness&#x60;. | [optional] [default to due_on]
 **direction** | **String**| The direction of the sort. Either &#x60;asc&#x60; or &#x60;desc&#x60;. | [optional] [default to asc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Milestone>**](Milestone.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesLock**
> issuesLock(owner, repo, issueNumber, body)

Lock an issue

Users with push access can lock an issue or pull request's conversation.  Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var body = new Body109(); // Body109 | 

try {
    api_instance.issuesLock(owner, repo, issueNumber, body);
} catch (e) {
    print("Exception when calling IssuesApi->issuesLock: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **body** | [**Body109**](Body109.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesRemoveAllLabels**
> issuesRemoveAllLabels(owner, repo, issueNumber)

Remove all labels from an issue

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter

try {
    api_instance.issuesRemoveAllLabels(owner, repo, issueNumber);
} catch (e) {
    print("Exception when calling IssuesApi->issuesRemoveAllLabels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesRemoveAssignees**
> IssueSimple issuesRemoveAssignees(owner, repo, issueNumber, body)

Remove assignees from an issue

Removes one or more assignees from an issue.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var body = new Body105(); // Body105 | 

try {
    var result = api_instance.issuesRemoveAssignees(owner, repo, issueNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesRemoveAssignees: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **body** | [**Body105**](Body105.md)|  | [optional] 

### Return type

[**IssueSimple**](IssueSimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesRemoveLabel**
> List<Label> issuesRemoveLabel(owner, repo, issueNumber, name)

Remove a label from an issue

Removes the specified label from the issue, and returns the remaining labels on the issue. This endpoint returns a `404 Not Found` status if the label does not exist.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var name = name_example; // String | 

try {
    var result = api_instance.issuesRemoveLabel(owner, repo, issueNumber, name);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesRemoveLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **name** | **String**|  | 

### Return type

[**List<Label>**](Label.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesSetLabels**
> List<Label> issuesSetLabels(owner, repo, issueNumber, body)

Set labels for an issue

Removes any previous labels and sets the new labels for an issue.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var body = new Body107(); // Body107 | 

try {
    var result = api_instance.issuesSetLabels(owner, repo, issueNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesSetLabels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **body** | [**Body107**](Body107.md)|  | [optional] 

### Return type

[**List<Label>**](Label.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesUnlock**
> issuesUnlock(owner, repo, issueNumber)

Unlock an issue

Users with push access can unlock an issue's conversation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter

try {
    api_instance.issuesUnlock(owner, repo, issueNumber);
} catch (e) {
    print("Exception when calling IssuesApi->issuesUnlock: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesUpdate**
> Issue issuesUpdate(owner, repo, issueNumber, body)

Update an issue

Issue owners and users with push access can edit an issue.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var issueNumber = 56; // int | issue_number parameter
var body = new Body103(); // Body103 | 

try {
    var result = api_instance.issuesUpdate(owner, repo, issueNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **issueNumber** | **int**| issue_number parameter | 
 **body** | [**Body103**](Body103.md)|  | [optional] 

### Return type

[**Issue**](Issue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesUpdateComment**
> IssueComment issuesUpdateComment(owner, repo, commentId, body)

Update an issue comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var body = new Body101(); // Body101 | 

try {
    var result = api_instance.issuesUpdateComment(owner, repo, commentId, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesUpdateComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **body** | [**Body101**](Body101.md)|  | [optional] 

### Return type

[**IssueComment**](IssueComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesUpdateLabel**
> Label issuesUpdateLabel(owner, repo, name, body)

Update a label

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var name = name_example; // String | 
var body = new Body113(); // Body113 | 

try {
    var result = api_instance.issuesUpdateLabel(owner, repo, name, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesUpdateLabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **name** | **String**|  | 
 **body** | [**Body113**](Body113.md)|  | [optional] 

### Return type

[**Label**](Label.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issuesUpdateMilestone**
> Milestone issuesUpdateMilestone(owner, repo, milestoneNumber, body)

Update a milestone

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssuesApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var milestoneNumber = 56; // int | milestone_number parameter
var body = new Body116(); // Body116 | 

try {
    var result = api_instance.issuesUpdateMilestone(owner, repo, milestoneNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling IssuesApi->issuesUpdateMilestone: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **milestoneNumber** | **int**| milestone_number parameter | 
 **body** | [**Body116**](Body116.md)|  | [optional] 

### Return type

[**Milestone**](Milestone.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

