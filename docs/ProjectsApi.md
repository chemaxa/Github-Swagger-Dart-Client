# swagger.api.ProjectsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projectsAddCollaborator**](ProjectsApi.md#projectsAddCollaborator) | **PUT** /projects/{project_id}/collaborators/{username} | Add project collaborator
[**projectsCreateCard**](ProjectsApi.md#projectsCreateCard) | **POST** /projects/columns/{column_id}/cards | Create a project card
[**projectsCreateColumn**](ProjectsApi.md#projectsCreateColumn) | **POST** /projects/{project_id}/columns | Create a project column
[**projectsCreateForAuthenticatedUser**](ProjectsApi.md#projectsCreateForAuthenticatedUser) | **POST** /user/projects | Create a user project
[**projectsCreateForOrg**](ProjectsApi.md#projectsCreateForOrg) | **POST** /orgs/{org}/projects | Create an organization project
[**projectsCreateForRepo**](ProjectsApi.md#projectsCreateForRepo) | **POST** /repos/{owner}/{repo}/projects | Create a repository project
[**projectsDelete**](ProjectsApi.md#projectsDelete) | **DELETE** /projects/{project_id} | Delete a project
[**projectsDeleteCard**](ProjectsApi.md#projectsDeleteCard) | **DELETE** /projects/columns/cards/{card_id} | Delete a project card
[**projectsDeleteColumn**](ProjectsApi.md#projectsDeleteColumn) | **DELETE** /projects/columns/{column_id} | Delete a project column
[**projectsGet**](ProjectsApi.md#projectsGet) | **GET** /projects/{project_id} | Get a project
[**projectsGetCard**](ProjectsApi.md#projectsGetCard) | **GET** /projects/columns/cards/{card_id} | Get a project card
[**projectsGetColumn**](ProjectsApi.md#projectsGetColumn) | **GET** /projects/columns/{column_id} | Get a project column
[**projectsGetPermissionForUser**](ProjectsApi.md#projectsGetPermissionForUser) | **GET** /projects/{project_id}/collaborators/{username}/permission | Get project permission for a user
[**projectsListCards**](ProjectsApi.md#projectsListCards) | **GET** /projects/columns/{column_id}/cards | List project cards
[**projectsListCollaborators**](ProjectsApi.md#projectsListCollaborators) | **GET** /projects/{project_id}/collaborators | List project collaborators
[**projectsListColumns**](ProjectsApi.md#projectsListColumns) | **GET** /projects/{project_id}/columns | List project columns
[**projectsListForOrg**](ProjectsApi.md#projectsListForOrg) | **GET** /orgs/{org}/projects | List organization projects
[**projectsListForRepo**](ProjectsApi.md#projectsListForRepo) | **GET** /repos/{owner}/{repo}/projects | List repository projects
[**projectsListForUser**](ProjectsApi.md#projectsListForUser) | **GET** /users/{username}/projects | List user projects
[**projectsMoveCard**](ProjectsApi.md#projectsMoveCard) | **POST** /projects/columns/cards/{card_id}/moves | Move a project card
[**projectsMoveColumn**](ProjectsApi.md#projectsMoveColumn) | **POST** /projects/columns/{column_id}/moves | Move a project column
[**projectsRemoveCollaborator**](ProjectsApi.md#projectsRemoveCollaborator) | **DELETE** /projects/{project_id}/collaborators/{username} | Remove user as a collaborator
[**projectsUpdate**](ProjectsApi.md#projectsUpdate) | **PATCH** /projects/{project_id} | Update a project
[**projectsUpdateCard**](ProjectsApi.md#projectsUpdateCard) | **PATCH** /projects/columns/cards/{card_id} | Update an existing project card
[**projectsUpdateColumn**](ProjectsApi.md#projectsUpdateColumn) | **PATCH** /projects/columns/{column_id} | Update an existing project column

# **projectsAddCollaborator**
> projectsAddCollaborator(projectId, username, body)

Add project collaborator

Adds a collaborator to an organization project and sets their permission level. You must be an organization owner or a project `admin` to add a collaborator.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var projectId = 56; // int | 
var username = username_example; // String | 
var body = new Body60(); // Body60 | 

try {
    api_instance.projectsAddCollaborator(projectId, username, body);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsAddCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | 
 **username** | **String**|  | 
 **body** | [**Body60**](Body60.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsCreateCard**
> ProjectCard projectsCreateCard(columnId, body)

Create a project card

**Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \"Issues\" endpoints may return both issues and pull requests in the response. You can identify pull requests by the `pull_request` key.  Be aware that the `id` of a pull request returned from \"Issues\" endpoints will be an _issue id_. To find out the pull request id, use the \"[List pull requests](https://developer.github.com/v3/pulls/#list-pull-requests)\" endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var columnId = 56; // int | column_id parameter
var body = new Body57(); // Body57 | 

try {
    var result = api_instance.projectsCreateCard(columnId, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsCreateCard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **columnId** | **int**| column_id parameter | 
 **body** | [**Body57**](Body57.md)|  | [optional] 

### Return type

[**ProjectCard**](ProjectCard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsCreateColumn**
> ProjectColumn projectsCreateColumn(projectId, body)

Create a project column

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var projectId = 56; // int | 
var body = new Body61(); // Body61 | 

try {
    var result = api_instance.projectsCreateColumn(projectId, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsCreateColumn: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | 
 **body** | [**Body61**](Body61.md)|  | [optional] 

### Return type

[**ProjectColumn**](ProjectColumn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsCreateForAuthenticatedUser**
> Project projectsCreateForAuthenticatedUser(body)

Create a user project

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var body = new Body171(); // Body171 | 

try {
    var result = api_instance.projectsCreateForAuthenticatedUser(body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsCreateForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body171**](Body171.md)|  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsCreateForOrg**
> Project projectsCreateForOrg(org, body)

Create an organization project

Creates an organization project board. Returns a `404 Not Found` status if projects are disabled in the organization. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var org = org_example; // String | 
var body = new Body40(); // Body40 | 

try {
    var result = api_instance.projectsCreateForOrg(org, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsCreateForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body40**](Body40.md)|  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsCreateForRepo**
> Project projectsCreateForRepo(owner, repo, body)

Create a repository project

Creates a repository project board. Returns a `404 Not Found` status if projects are disabled in the repository. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body120(); // Body120 | 

try {
    var result = api_instance.projectsCreateForRepo(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsCreateForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body120**](Body120.md)|  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsDelete**
> projectsDelete(projectId)

Delete a project

Deletes a project board. Returns a `404 Not Found` status if projects are disabled.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var projectId = 56; // int | 

try {
    api_instance.projectsDelete(projectId);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsDeleteCard**
> projectsDeleteCard(cardId)

Delete a project card

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var cardId = 56; // int | card_id parameter

try {
    api_instance.projectsDeleteCard(cardId);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsDeleteCard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardId** | **int**| card_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsDeleteColumn**
> projectsDeleteColumn(columnId)

Delete a project column

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var columnId = 56; // int | column_id parameter

try {
    api_instance.projectsDeleteColumn(columnId);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsDeleteColumn: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **columnId** | **int**| column_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsGet**
> Project projectsGet(projectId)

Get a project

Gets a project by its `id`. Returns a `404 Not Found` status if projects are disabled. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var projectId = 56; // int | 

try {
    var result = api_instance.projectsGet(projectId);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsGetCard**
> ProjectCard projectsGetCard(cardId)

Get a project card

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var cardId = 56; // int | card_id parameter

try {
    var result = api_instance.projectsGetCard(cardId);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsGetCard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardId** | **int**| card_id parameter | 

### Return type

[**ProjectCard**](ProjectCard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsGetColumn**
> ProjectColumn projectsGetColumn(columnId)

Get a project column

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var columnId = 56; // int | column_id parameter

try {
    var result = api_instance.projectsGetColumn(columnId);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsGetColumn: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **columnId** | **int**| column_id parameter | 

### Return type

[**ProjectColumn**](ProjectColumn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsGetPermissionForUser**
> RepositoryCollaboratorPermission projectsGetPermissionForUser(projectId, username)

Get project permission for a user

Returns the collaborator's permission level for an organization project. Possible values for the `permission` key: `admin`, `write`, `read`, `none`. You must be an organization owner or a project `admin` to review a user's permission level.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var projectId = 56; // int | 
var username = username_example; // String | 

try {
    var result = api_instance.projectsGetPermissionForUser(projectId, username);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsGetPermissionForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | 
 **username** | **String**|  | 

### Return type

[**RepositoryCollaboratorPermission**](RepositoryCollaboratorPermission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsListCards**
> List<ProjectCard> projectsListCards(columnId, archivedState, perPage, page)

List project cards

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var columnId = 56; // int | column_id parameter
var archivedState = archivedState_example; // String | Filters the project cards that are returned by the card's state. Can be one of `all`,`archived`, or `not_archived`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.projectsListCards(columnId, archivedState, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsListCards: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **columnId** | **int**| column_id parameter | 
 **archivedState** | **String**| Filters the project cards that are returned by the card&#x27;s state. Can be one of &#x60;all&#x60;,&#x60;archived&#x60;, or &#x60;not_archived&#x60;. | [optional] [default to not_archived]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<ProjectCard>**](ProjectCard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsListCollaborators**
> List<SimpleUser> projectsListCollaborators(projectId, affiliation, perPage, page)

List project collaborators

Lists the collaborators for an organization project. For a project, the list of collaborators includes outside collaborators, organization members that are direct collaborators, organization members with access through team memberships, organization members with access through default organization permissions, and organization owners. You must be an organization owner or a project `admin` to list collaborators.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var projectId = 56; // int | 
var affiliation = affiliation_example; // String | Filters the collaborators by their affiliation. Can be one of:   \\* `outside`: Outside collaborators of a project that are not a member of the project's organization.   \\* `direct`: Collaborators with permissions to a project, regardless of organization membership status.   \\* `all`: All collaborators the authenticated user can see.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.projectsListCollaborators(projectId, affiliation, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsListCollaborators: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | 
 **affiliation** | **String**| Filters the collaborators by their affiliation. Can be one of:   \\* &#x60;outside&#x60;: Outside collaborators of a project that are not a member of the project&#x27;s organization.   \\* &#x60;direct&#x60;: Collaborators with permissions to a project, regardless of organization membership status.   \\* &#x60;all&#x60;: All collaborators the authenticated user can see. | [optional] [default to all]
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

# **projectsListColumns**
> List<ProjectColumn> projectsListColumns(projectId, perPage, page)

List project columns

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var projectId = 56; // int | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.projectsListColumns(projectId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsListColumns: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<ProjectColumn>**](ProjectColumn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsListForOrg**
> List<Project> projectsListForOrg(org, state, perPage, page)

List organization projects

Lists the projects in an organization. Returns a `404 Not Found` status if projects are disabled in the organization. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var org = org_example; // String | 
var state = state_example; // String | Indicates the state of the projects to return. Can be either `open`, `closed`, or `all`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.projectsListForOrg(org, state, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsListForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **state** | **String**| Indicates the state of the projects to return. Can be either &#x60;open&#x60;, &#x60;closed&#x60;, or &#x60;all&#x60;. | [optional] [default to open]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Project>**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsListForRepo**
> List<Project> projectsListForRepo(owner, repo, state, perPage, page)

List repository projects

Lists the projects in a repository. Returns a `404 Not Found` status if projects are disabled in the repository. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var state = state_example; // String | Indicates the state of the projects to return. Can be either `open`, `closed`, or `all`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.projectsListForRepo(owner, repo, state, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsListForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **state** | **String**| Indicates the state of the projects to return. Can be either &#x60;open&#x60;, &#x60;closed&#x60;, or &#x60;all&#x60;. | [optional] [default to open]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Project>**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsListForUser**
> List<Project> projectsListForUser(username, state, perPage, page)

List user projects

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var username = username_example; // String | 
var state = state_example; // String | Indicates the state of the projects to return. Can be either `open`, `closed`, or `all`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.projectsListForUser(username, state, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsListForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **state** | **String**| Indicates the state of the projects to return. Can be either &#x60;open&#x60;, &#x60;closed&#x60;, or &#x60;all&#x60;. | [optional] [default to open]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Project>**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsMoveCard**
> Object projectsMoveCard(cardId, body)

Move a project card

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var cardId = 56; // int | card_id parameter
var body = new Body55(); // Body55 | 

try {
    var result = api_instance.projectsMoveCard(cardId, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsMoveCard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardId** | **int**| card_id parameter | 
 **body** | [**Body55**](Body55.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsMoveColumn**
> Object projectsMoveColumn(columnId, body)

Move a project column

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var columnId = 56; // int | column_id parameter
var body = new Body58(); // Body58 | 

try {
    var result = api_instance.projectsMoveColumn(columnId, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsMoveColumn: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **columnId** | **int**| column_id parameter | 
 **body** | [**Body58**](Body58.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsRemoveCollaborator**
> projectsRemoveCollaborator(projectId, username)

Remove user as a collaborator

Removes a collaborator from an organization project. You must be an organization owner or a project `admin` to remove a collaborator.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var projectId = 56; // int | 
var username = username_example; // String | 

try {
    api_instance.projectsRemoveCollaborator(projectId, username);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsRemoveCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsUpdate**
> Project projectsUpdate(projectId, body)

Update a project

Updates a project board's information. Returns a `404 Not Found` status if projects are disabled. If you do not have sufficient privileges to perform this action, a `401 Unauthorized` or `410 Gone` status is returned.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var projectId = 56; // int | 
var body = new Body59(); // Body59 | 

try {
    var result = api_instance.projectsUpdate(projectId, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**|  | 
 **body** | [**Body59**](Body59.md)|  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsUpdateCard**
> ProjectCard projectsUpdateCard(cardId, body)

Update an existing project card

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var cardId = 56; // int | card_id parameter
var body = new Body54(); // Body54 | 

try {
    var result = api_instance.projectsUpdateCard(cardId, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsUpdateCard: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardId** | **int**| card_id parameter | 
 **body** | [**Body54**](Body54.md)|  | [optional] 

### Return type

[**ProjectCard**](ProjectCard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsUpdateColumn**
> ProjectColumn projectsUpdateColumn(columnId, body)

Update an existing project column

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var columnId = 56; // int | column_id parameter
var body = new Body56(); // Body56 | 

try {
    var result = api_instance.projectsUpdateColumn(columnId, body);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->projectsUpdateColumn: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **columnId** | **int**| column_id parameter | 
 **body** | [**Body56**](Body56.md)|  | [optional] 

### Return type

[**ProjectColumn**](ProjectColumn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

