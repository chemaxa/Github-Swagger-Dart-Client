# swagger.api.ActivityApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activityCheckRepoIsStarredByAuthenticatedUser**](ActivityApi.md#activityCheckRepoIsStarredByAuthenticatedUser) | **GET** /user/starred/{owner}/{repo} | Check if a repository is starred by the authenticated user
[**activityDeleteRepoSubscription**](ActivityApi.md#activityDeleteRepoSubscription) | **DELETE** /repos/{owner}/{repo}/subscription | Delete a repository subscription
[**activityDeleteThreadSubscription**](ActivityApi.md#activityDeleteThreadSubscription) | **DELETE** /notifications/threads/{thread_id}/subscription | Delete a thread subscription
[**activityGetFeeds**](ActivityApi.md#activityGetFeeds) | **GET** /feeds | Get feeds
[**activityGetRepoSubscription**](ActivityApi.md#activityGetRepoSubscription) | **GET** /repos/{owner}/{repo}/subscription | Get a repository subscription
[**activityGetThread**](ActivityApi.md#activityGetThread) | **GET** /notifications/threads/{thread_id} | Get a thread
[**activityGetThreadSubscriptionForAuthenticatedUser**](ActivityApi.md#activityGetThreadSubscriptionForAuthenticatedUser) | **GET** /notifications/threads/{thread_id}/subscription | Get a thread subscription for the authenticated user
[**activityListEventsForAuthenticatedUser**](ActivityApi.md#activityListEventsForAuthenticatedUser) | **GET** /users/{username}/events | List events for the authenticated user
[**activityListNotificationsForAuthenticatedUser**](ActivityApi.md#activityListNotificationsForAuthenticatedUser) | **GET** /notifications | List notifications for the authenticated user
[**activityListOrgEventsForAuthenticatedUser**](ActivityApi.md#activityListOrgEventsForAuthenticatedUser) | **GET** /users/{username}/events/orgs/{org} | List organization events for the authenticated user
[**activityListPublicEvents**](ActivityApi.md#activityListPublicEvents) | **GET** /events | List public events
[**activityListPublicEventsForRepoNetwork**](ActivityApi.md#activityListPublicEventsForRepoNetwork) | **GET** /networks/{owner}/{repo}/events | List public events for a network of repositories
[**activityListPublicEventsForUser**](ActivityApi.md#activityListPublicEventsForUser) | **GET** /users/{username}/events/public | List public events for a user
[**activityListPublicOrgEvents**](ActivityApi.md#activityListPublicOrgEvents) | **GET** /orgs/{org}/events | List public organization events
[**activityListReceivedEventsForUser**](ActivityApi.md#activityListReceivedEventsForUser) | **GET** /users/{username}/received_events | List events received by the authenticated user
[**activityListReceivedPublicEventsForUser**](ActivityApi.md#activityListReceivedPublicEventsForUser) | **GET** /users/{username}/received_events/public | List public events received by a user
[**activityListRepoEvents**](ActivityApi.md#activityListRepoEvents) | **GET** /repos/{owner}/{repo}/events | List repository events
[**activityListRepoNotificationsForAuthenticatedUser**](ActivityApi.md#activityListRepoNotificationsForAuthenticatedUser) | **GET** /repos/{owner}/{repo}/notifications | List repository notifications for the authenticated user
[**activityListReposStarredByAuthenticatedUser**](ActivityApi.md#activityListReposStarredByAuthenticatedUser) | **GET** /user/starred | List repositories starred by the authenticated user
[**activityListReposStarredByUser**](ActivityApi.md#activityListReposStarredByUser) | **GET** /users/{username}/starred | List repositories starred by a user
[**activityListReposWatchedByUser**](ActivityApi.md#activityListReposWatchedByUser) | **GET** /users/{username}/subscriptions | List repositories watched by a user
[**activityListStargazersForRepo**](ActivityApi.md#activityListStargazersForRepo) | **GET** /repos/{owner}/{repo}/stargazers | List stargazers
[**activityListWatchedReposForAuthenticatedUser**](ActivityApi.md#activityListWatchedReposForAuthenticatedUser) | **GET** /user/subscriptions | List repositories watched by the authenticated user
[**activityListWatchersForRepo**](ActivityApi.md#activityListWatchersForRepo) | **GET** /repos/{owner}/{repo}/subscribers | List watchers
[**activityMarkNotificationsAsRead**](ActivityApi.md#activityMarkNotificationsAsRead) | **PUT** /notifications | Mark notifications as read
[**activityMarkRepoNotificationsAsRead**](ActivityApi.md#activityMarkRepoNotificationsAsRead) | **PUT** /repos/{owner}/{repo}/notifications | Mark repository notifications as read
[**activityMarkThreadAsRead**](ActivityApi.md#activityMarkThreadAsRead) | **PATCH** /notifications/threads/{thread_id} | Mark a thread as read
[**activitySetRepoSubscription**](ActivityApi.md#activitySetRepoSubscription) | **PUT** /repos/{owner}/{repo}/subscription | Set a repository subscription
[**activitySetThreadSubscription**](ActivityApi.md#activitySetThreadSubscription) | **PUT** /notifications/threads/{thread_id}/subscription | Set a thread subscription
[**activityStarRepoForAuthenticatedUser**](ActivityApi.md#activityStarRepoForAuthenticatedUser) | **PUT** /user/starred/{owner}/{repo} | Star a repository for the authenticated user
[**activityUnstarRepoForAuthenticatedUser**](ActivityApi.md#activityUnstarRepoForAuthenticatedUser) | **DELETE** /user/starred/{owner}/{repo} | Unstar a repository for the authenticated user

# **activityCheckRepoIsStarredByAuthenticatedUser**
> activityCheckRepoIsStarredByAuthenticatedUser(owner, repo)

Check if a repository is starred by the authenticated user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.activityCheckRepoIsStarredByAuthenticatedUser(owner, repo);
} catch (e) {
    print("Exception when calling ActivityApi->activityCheckRepoIsStarredByAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityDeleteRepoSubscription**
> activityDeleteRepoSubscription(owner, repo)

Delete a repository subscription

This endpoint should only be used to stop watching a repository. To control whether or not you wish to receive notifications from a repository, [set the repository's subscription manually](https://developer.github.com/v3/activity/watching/#set-a-repository-subscription).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.activityDeleteRepoSubscription(owner, repo);
} catch (e) {
    print("Exception when calling ActivityApi->activityDeleteRepoSubscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityDeleteThreadSubscription**
> activityDeleteThreadSubscription(threadId)

Delete a thread subscription

Mutes all future notifications for a conversation until you comment on the thread or get an **@mention**. If you are watching the repository of the thread, you will still receive notifications. To ignore future notifications for a repository you are watching, use the [Set a thread subscription](https://developer.github.com/v3/activity/notifications/#set-a-thread-subscription) endpoint and set `ignore` to `true`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var threadId = 56; // int | thread_id parameter

try {
    api_instance.activityDeleteThreadSubscription(threadId);
} catch (e) {
    print("Exception when calling ActivityApi->activityDeleteThreadSubscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **int**| thread_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityGetFeeds**
> Feed activityGetFeeds()

Get feeds

GitHub provides several timeline resources in [Atom](http://en.wikipedia.org/wiki/Atom_(standard)) format. The Feeds API lists all the feeds available to the authenticated user:  *   **Timeline**: The GitHub global public timeline *   **User**: The public timeline for any user, using [URI template](https://developer.github.com/v3/#hypermedia) *   **Current user public**: The public timeline for the authenticated user *   **Current user**: The private timeline for the authenticated user *   **Current user actor**: The private timeline for activity created by the authenticated user *   **Current user organizations**: The private timeline for the organizations the authenticated user is a member of. *   **Security advisories**: A collection of public announcements that provide information about security-related vulnerabilities in software on GitHub.  **Note**: Private feeds are only returned when [authenticating via Basic Auth](https://developer.github.com/v3/#basic-authentication) since current feed URIs use the older, non revocable auth tokens.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();

try {
    var result = api_instance.activityGetFeeds();
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityGetFeeds: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Feed**](Feed.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityGetRepoSubscription**
> RepositorySubscription activityGetRepoSubscription(owner, repo)

Get a repository subscription

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.activityGetRepoSubscription(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityGetRepoSubscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**RepositorySubscription**](RepositorySubscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityGetThread**
> Thread activityGetThread(threadId)

Get a thread

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var threadId = 56; // int | thread_id parameter

try {
    var result = api_instance.activityGetThread(threadId);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityGetThread: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **int**| thread_id parameter | 

### Return type

[**Thread**](Thread.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityGetThreadSubscriptionForAuthenticatedUser**
> ThreadSubscription activityGetThreadSubscriptionForAuthenticatedUser(threadId)

Get a thread subscription for the authenticated user

This checks to see if the current user is subscribed to a thread. You can also [get a repository subscription](https://developer.github.com/v3/activity/watching/#get-a-repository-subscription).  Note that subscriptions are only generated if a user is participating in a conversation--for example, they've replied to the thread, were **@mentioned**, or manually subscribe to a thread.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var threadId = 56; // int | thread_id parameter

try {
    var result = api_instance.activityGetThreadSubscriptionForAuthenticatedUser(threadId);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityGetThreadSubscriptionForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **int**| thread_id parameter | 

### Return type

[**ThreadSubscription**](ThreadSubscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListEventsForAuthenticatedUser**
> List<Event> activityListEventsForAuthenticatedUser(username, perPage, page)

List events for the authenticated user

If you are authenticated as the given user, you will see your private events. Otherwise, you'll only see public events.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListEventsForAuthenticatedUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListEventsForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Event>**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListNotificationsForAuthenticatedUser**
> List<Thread> activityListNotificationsForAuthenticatedUser(all, participating, since, before, perPage, page)

List notifications for the authenticated user

List all notifications for the current user, sorted by most recently updated.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var all = true; // bool | If `true`, show notifications marked as read.
var participating = true; // bool | If `true`, only shows notifications in which the user is directly participating or mentioned.
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var before = before_example; // String | Only show notifications updated before the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListNotificationsForAuthenticatedUser(all, participating, since, before, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListNotificationsForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **all** | **bool**| If &#x60;true&#x60;, show notifications marked as read. | [optional] [default to false]
 **participating** | **bool**| If &#x60;true&#x60;, only shows notifications in which the user is directly participating or mentioned. | [optional] [default to false]
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **before** | **String**| Only show notifications updated before the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Thread>**](Thread.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListOrgEventsForAuthenticatedUser**
> List<Event> activityListOrgEventsForAuthenticatedUser(username, org, perPage, page)

List organization events for the authenticated user

This is the user's organization dashboard. You must be authenticated as the user to view this.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var username = username_example; // String | 
var org = org_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListOrgEventsForAuthenticatedUser(username, org, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListOrgEventsForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **org** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Event>**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListPublicEvents**
> List<Event> activityListPublicEvents(perPage, page)

List public events

We delay the public events feed by five minutes, which means the most recent event returned by the public events API actually occurred at least five minutes ago.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListPublicEvents(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListPublicEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Event>**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListPublicEventsForRepoNetwork**
> List<Event> activityListPublicEventsForRepoNetwork(owner, repo, perPage, page)

List public events for a network of repositories

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListPublicEventsForRepoNetwork(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListPublicEventsForRepoNetwork: $e\n");
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

[**List<Event>**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListPublicEventsForUser**
> List<Event> activityListPublicEventsForUser(username, perPage, page)

List public events for a user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListPublicEventsForUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListPublicEventsForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Event>**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListPublicOrgEvents**
> List<Event> activityListPublicOrgEvents(org, perPage, page)

List public organization events

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var org = org_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListPublicOrgEvents(org, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListPublicOrgEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Event>**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListReceivedEventsForUser**
> List<Event> activityListReceivedEventsForUser(username, perPage, page)

List events received by the authenticated user

These are events that you've received by watching repos and following users. If you are authenticated as the given user, you will see private events. Otherwise, you'll only see public events.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListReceivedEventsForUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListReceivedEventsForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Event>**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListReceivedPublicEventsForUser**
> List<Event> activityListReceivedPublicEventsForUser(username, perPage, page)

List public events received by a user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListReceivedPublicEventsForUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListReceivedPublicEventsForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Event>**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListRepoEvents**
> List<Event> activityListRepoEvents(owner, repo, perPage, page)

List repository events

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListRepoEvents(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListRepoEvents: $e\n");
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

[**List<Event>**](Event.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListRepoNotificationsForAuthenticatedUser**
> List<Thread> activityListRepoNotificationsForAuthenticatedUser(owner, repo, all, participating, since, before, perPage, page)

List repository notifications for the authenticated user

List all notifications for the current user.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var all = true; // bool | If `true`, show notifications marked as read.
var participating = true; // bool | If `true`, only shows notifications in which the user is directly participating or mentioned.
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var before = before_example; // String | Only show notifications updated before the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListRepoNotificationsForAuthenticatedUser(owner, repo, all, participating, since, before, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListRepoNotificationsForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **all** | **bool**| If &#x60;true&#x60;, show notifications marked as read. | [optional] [default to false]
 **participating** | **bool**| If &#x60;true&#x60;, only shows notifications in which the user is directly participating or mentioned. | [optional] [default to false]
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **before** | **String**| Only show notifications updated before the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Thread>**](Thread.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListReposStarredByAuthenticatedUser**
> List<Repository> activityListReposStarredByAuthenticatedUser(sort, direction, perPage, page)

List repositories starred by the authenticated user

Lists repositories the authenticated user has starred.  You can also find out _when_ stars were created by passing the following custom [media type](https://developer.github.com/v3/media/) via the `Accept` header:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var sort = sort_example; // String | One of `created` (when the repository was starred) or `updated` (when it was last pushed to).
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListReposStarredByAuthenticatedUser(sort, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListReposStarredByAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**| One of &#x60;created&#x60; (when the repository was starred) or &#x60;updated&#x60; (when it was last pushed to). | [optional] [default to created]
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Repository>**](Repository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.github.v3.star+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListReposStarredByUser**
> List<Repository> activityListReposStarredByUser(username, sort, direction, perPage, page)

List repositories starred by a user

Lists repositories a user has starred.  You can also find out _when_ stars were created by passing the following custom [media type](https://developer.github.com/v3/media/) via the `Accept` header:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var username = username_example; // String | 
var sort = sort_example; // String | One of `created` (when the repository was starred) or `updated` (when it was last pushed to).
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListReposStarredByUser(username, sort, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListReposStarredByUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **sort** | **String**| One of &#x60;created&#x60; (when the repository was starred) or &#x60;updated&#x60; (when it was last pushed to). | [optional] [default to created]
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Repository>**](Repository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.github.v3.star+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListReposWatchedByUser**
> List<MinimalRepository> activityListReposWatchedByUser(username, perPage, page)

List repositories watched by a user

Lists repositories a user is watching.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListReposWatchedByUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListReposWatchedByUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<MinimalRepository>**](MinimalRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListStargazersForRepo**
> List<SimpleUser> activityListStargazersForRepo(owner, repo, perPage, page)

List stargazers

Lists the people that have starred the repository.  You can also find out _when_ stars were created by passing the following custom [media type](https://developer.github.com/v3/media/) via the `Accept` header:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListStargazersForRepo(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListStargazersForRepo: $e\n");
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
 - **Accept**: application/json, application/vnd.github.v3.star+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListWatchedReposForAuthenticatedUser**
> List<MinimalRepository> activityListWatchedReposForAuthenticatedUser(perPage, page)

List repositories watched by the authenticated user

Lists repositories the authenticated user is watching.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListWatchedReposForAuthenticatedUser(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListWatchedReposForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<MinimalRepository>**](MinimalRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityListWatchersForRepo**
> List<SimpleUser> activityListWatchersForRepo(owner, repo, perPage, page)

List watchers

Lists the people watching the specified repository.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.activityListWatchersForRepo(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityListWatchersForRepo: $e\n");
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

# **activityMarkNotificationsAsRead**
> InlineResponse202 activityMarkNotificationsAsRead(body)

Mark notifications as read

Marks all notifications as \"read\" removes it from the [default view on GitHub](https://github.com/notifications). If the number of notifications is too large to complete in one request, you will receive a `202 Accepted` status and GitHub will run an asynchronous process to mark notifications as \"read.\" To check whether any \"unread\" notifications remain, you can use the [List notifications for the authenticated user](https://developer.github.com/v3/activity/notifications/#list-notifications-for-the-authenticated-user) endpoint and pass the query parameter `all=false`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var body = new Body22(); // Body22 | 

try {
    var result = api_instance.activityMarkNotificationsAsRead(body);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activityMarkNotificationsAsRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body22**](Body22.md)|  | [optional] 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityMarkRepoNotificationsAsRead**
> activityMarkRepoNotificationsAsRead(owner, repo, body)

Mark repository notifications as read

Marks all notifications in a repository as \"read\" removes them from the [default view on GitHub](https://github.com/notifications). If the number of notifications is too large to complete in one request, you will receive a `202 Accepted` status and GitHub will run an asynchronous process to mark notifications as \"read.\" To check whether any \"unread\" notifications remain, you can use the [List repository notifications for the authenticated user](https://developer.github.com/v3/activity/notifications/#list-repository-notifications-for-the-authenticated-user) endpoint and pass the query parameter `all=false`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body117(); // Body117 | 

try {
    api_instance.activityMarkRepoNotificationsAsRead(owner, repo, body);
} catch (e) {
    print("Exception when calling ActivityApi->activityMarkRepoNotificationsAsRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body117**](Body117.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityMarkThreadAsRead**
> activityMarkThreadAsRead(threadId)

Mark a thread as read

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var threadId = 56; // int | thread_id parameter

try {
    api_instance.activityMarkThreadAsRead(threadId);
} catch (e) {
    print("Exception when calling ActivityApi->activityMarkThreadAsRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **int**| thread_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activitySetRepoSubscription**
> RepositorySubscription activitySetRepoSubscription(owner, repo, body)

Set a repository subscription

If you would like to watch a repository, set `subscribed` to `true`. If you would like to ignore notifications made within a repository, set `ignored` to `true`. If you would like to stop watching a repository, [delete the repository's subscription](https://developer.github.com/v3/activity/watching/#delete-a-repository-subscription) completely.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body139(); // Body139 | 

try {
    var result = api_instance.activitySetRepoSubscription(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activitySetRepoSubscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body139**](Body139.md)|  | [optional] 

### Return type

[**RepositorySubscription**](RepositorySubscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activitySetThreadSubscription**
> ThreadSubscription activitySetThreadSubscription(threadId, body)

Set a thread subscription

If you are watching a repository, you receive notifications for all threads by default. Use this endpoint to ignore future notifications for threads until you comment on the thread or get an **@mention**.  You can also use this endpoint to subscribe to threads that you are currently not receiving notifications for or to subscribed to threads that you have previously ignored.  Unsubscribing from a conversation in a repository that you are not watching is functionally equivalent to the [Delete a thread subscription](https://developer.github.com/v3/activity/notifications/#delete-a-thread-subscription) endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var threadId = 56; // int | thread_id parameter
var body = new Body23(); // Body23 | 

try {
    var result = api_instance.activitySetThreadSubscription(threadId, body);
    print(result);
} catch (e) {
    print("Exception when calling ActivityApi->activitySetThreadSubscription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **int**| thread_id parameter | 
 **body** | [**Body23**](Body23.md)|  | [optional] 

### Return type

[**ThreadSubscription**](ThreadSubscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityStarRepoForAuthenticatedUser**
> activityStarRepoForAuthenticatedUser(owner, repo)

Star a repository for the authenticated user

Note that you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.activityStarRepoForAuthenticatedUser(owner, repo);
} catch (e) {
    print("Exception when calling ActivityApi->activityStarRepoForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activityUnstarRepoForAuthenticatedUser**
> activityUnstarRepoForAuthenticatedUser(owner, repo)

Unstar a repository for the authenticated user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ActivityApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.activityUnstarRepoForAuthenticatedUser(owner, repo);
} catch (e) {
    print("Exception when calling ActivityApi->activityUnstarRepoForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

