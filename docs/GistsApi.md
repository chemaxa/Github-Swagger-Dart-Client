# swagger.api.GistsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gistsCheckIsStarred**](GistsApi.md#gistsCheckIsStarred) | **GET** /gists/{gist_id}/star | Check if a gist is starred
[**gistsCreate**](GistsApi.md#gistsCreate) | **POST** /gists | Create a gist
[**gistsCreateComment**](GistsApi.md#gistsCreateComment) | **POST** /gists/{gist_id}/comments | Create a gist comment
[**gistsDelete**](GistsApi.md#gistsDelete) | **DELETE** /gists/{gist_id} | Delete a gist
[**gistsDeleteComment**](GistsApi.md#gistsDeleteComment) | **DELETE** /gists/{gist_id}/comments/{comment_id} | Delete a gist comment
[**gistsFork**](GistsApi.md#gistsFork) | **POST** /gists/{gist_id}/forks | Fork a gist
[**gistsGet**](GistsApi.md#gistsGet) | **GET** /gists/{gist_id} | Get a gist
[**gistsGetComment**](GistsApi.md#gistsGetComment) | **GET** /gists/{gist_id}/comments/{comment_id} | Get a gist comment
[**gistsGetRevision**](GistsApi.md#gistsGetRevision) | **GET** /gists/{gist_id}/{sha} | Get a gist revision
[**gistsList**](GistsApi.md#gistsList) | **GET** /gists | List gists for the authenticated user
[**gistsListComments**](GistsApi.md#gistsListComments) | **GET** /gists/{gist_id}/comments | List gist comments
[**gistsListCommits**](GistsApi.md#gistsListCommits) | **GET** /gists/{gist_id}/commits | List gist commits
[**gistsListForUser**](GistsApi.md#gistsListForUser) | **GET** /users/{username}/gists | List gists for a user
[**gistsListForks**](GistsApi.md#gistsListForks) | **GET** /gists/{gist_id}/forks | List gist forks
[**gistsListPublic**](GistsApi.md#gistsListPublic) | **GET** /gists/public | List public gists
[**gistsListStarred**](GistsApi.md#gistsListStarred) | **GET** /gists/starred | List starred gists
[**gistsStar**](GistsApi.md#gistsStar) | **PUT** /gists/{gist_id}/star | Star a gist
[**gistsUnstar**](GistsApi.md#gistsUnstar) | **DELETE** /gists/{gist_id}/star | Unstar a gist
[**gistsUpdate**](GistsApi.md#gistsUpdate) | **PATCH** /gists/{gist_id} | Update a gist
[**gistsUpdateComment**](GistsApi.md#gistsUpdateComment) | **PATCH** /gists/{gist_id}/comments/{comment_id} | Update a gist comment

# **gistsCheckIsStarred**
> gistsCheckIsStarred(gistId)

Check if a gist is starred

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter

try {
    api_instance.gistsCheckIsStarred(gistId);
} catch (e) {
    print("Exception when calling GistsApi->gistsCheckIsStarred: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsCreate**
> GistFull gistsCreate(body)

Create a gist

Allows you to add a new gist with one or more files.  **Note:** Don't name your files \"gistfile\" with a numerical suffix. This is the format of the automatic naming scheme that Gist uses internally.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var body = new Body17(); // Body17 | 

try {
    var result = api_instance.gistsCreate(body);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body17**](Body17.md)|  | [optional] 

### Return type

[**GistFull**](GistFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsCreateComment**
> GistComment gistsCreateComment(gistId, body)

Create a gist comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter
var body = new Body19(); // Body19 | 

try {
    var result = api_instance.gistsCreateComment(gistId, body);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsCreateComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 
 **body** | [**Body19**](Body19.md)|  | [optional] 

### Return type

[**GistComment**](GistComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsDelete**
> gistsDelete(gistId)

Delete a gist

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter

try {
    api_instance.gistsDelete(gistId);
} catch (e) {
    print("Exception when calling GistsApi->gistsDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsDeleteComment**
> gistsDeleteComment(gistId, commentId)

Delete a gist comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter
var commentId = 56; // int | comment_id parameter

try {
    api_instance.gistsDeleteComment(gistId, commentId);
} catch (e) {
    print("Exception when calling GistsApi->gistsDeleteComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 
 **commentId** | **int**| comment_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsFork**
> BaseGist gistsFork(gistId)

Fork a gist

**Note**: This was previously `/gists/:gist_id/fork`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter

try {
    var result = api_instance.gistsFork(gistId);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsFork: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 

### Return type

[**BaseGist**](BaseGist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsGet**
> GistFull gistsGet(gistId)

Get a gist

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter

try {
    var result = api_instance.gistsGet(gistId);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 

### Return type

[**GistFull**](GistFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsGetComment**
> GistComment gistsGetComment(gistId, commentId)

Get a gist comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter
var commentId = 56; // int | comment_id parameter

try {
    var result = api_instance.gistsGetComment(gistId, commentId);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsGetComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 
 **commentId** | **int**| comment_id parameter | 

### Return type

[**GistComment**](GistComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsGetRevision**
> GistFull gistsGetRevision(gistId, sha)

Get a gist revision

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter
var sha = sha_example; // String | 

try {
    var result = api_instance.gistsGetRevision(gistId, sha);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsGetRevision: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 
 **sha** | **String**|  | 

### Return type

[**GistFull**](GistFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsList**
> List<BaseGist> gistsList(since, perPage, page)

List gists for the authenticated user

Lists the authenticated user's gists or if called anonymously, this endpoint returns all public gists:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.gistsList(since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<BaseGist>**](BaseGist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsListComments**
> List<GistComment> gistsListComments(gistId, perPage, page)

List gist comments

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.gistsListComments(gistId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsListComments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<GistComment>**](GistComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsListCommits**
> List<GistCommit> gistsListCommits(gistId, perPage, page)

List gist commits

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.gistsListCommits(gistId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsListCommits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<GistCommit>**](GistCommit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsListForUser**
> List<BaseGist> gistsListForUser(username, since, perPage, page)

List gists for a user

Lists public gists for the specified user:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var username = username_example; // String | 
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.gistsListForUser(username, since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsListForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<BaseGist>**](BaseGist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsListForks**
> List<GistFull> gistsListForks(gistId, perPage, page)

List gist forks

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.gistsListForks(gistId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsListForks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<GistFull>**](GistFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsListPublic**
> List<BaseGist> gistsListPublic(since, perPage, page)

List public gists

List public gists sorted by most recently updated to least recently updated.  Note: With [pagination](https://developer.github.com/v3/#pagination), you can fetch up to 3000 gists. For example, you can fetch 100 pages with 30 gists per page or 30 pages with 100 gists per page.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.gistsListPublic(since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsListPublic: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<BaseGist>**](BaseGist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsListStarred**
> List<BaseGist> gistsListStarred(since, perPage, page)

List starred gists

List the authenticated user's starred gists:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.gistsListStarred(since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsListStarred: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<BaseGist>**](BaseGist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsStar**
> gistsStar(gistId)

Star a gist

Note that you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter

try {
    api_instance.gistsStar(gistId);
} catch (e) {
    print("Exception when calling GistsApi->gistsStar: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsUnstar**
> gistsUnstar(gistId)

Unstar a gist

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter

try {
    api_instance.gistsUnstar(gistId);
} catch (e) {
    print("Exception when calling GistsApi->gistsUnstar: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsUpdate**
> GistFull gistsUpdate(gistId, body)

Update a gist

Allows you to update or delete a gist file and rename gist files. Files from the previous version of the gist that aren't explicitly changed during an edit are unchanged.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter
var body = new Body18(); // Body18 | 

try {
    var result = api_instance.gistsUpdate(gistId, body);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 
 **body** | [**Body18**](Body18.md)|  | [optional] 

### Return type

[**GistFull**](GistFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gistsUpdateComment**
> GistComment gistsUpdateComment(gistId, commentId, body)

Update a gist comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GistsApi();
var gistId = gistId_example; // String | gist_id parameter
var commentId = 56; // int | comment_id parameter
var body = new Body20(); // Body20 | 

try {
    var result = api_instance.gistsUpdateComment(gistId, commentId, body);
    print(result);
} catch (e) {
    print("Exception when calling GistsApi->gistsUpdateComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gistId** | **String**| gist_id parameter | 
 **commentId** | **int**| comment_id parameter | 
 **body** | [**Body20**](Body20.md)|  | [optional] 

### Return type

[**GistComment**](GistComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

