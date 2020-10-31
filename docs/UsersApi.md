# swagger.api.UsersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersAddEmailForAuthenticated**](UsersApi.md#usersAddEmailForAuthenticated) | **POST** /user/emails | Add an email address for the authenticated user
[**usersBlock**](UsersApi.md#usersBlock) | **PUT** /user/blocks/{username} | Block a user
[**usersCheckBlocked**](UsersApi.md#usersCheckBlocked) | **GET** /user/blocks/{username} | Check if a user is blocked by the authenticated user
[**usersCheckFollowingForUser**](UsersApi.md#usersCheckFollowingForUser) | **GET** /users/{username}/following/{target_user} | Check if a user follows another user
[**usersCheckPersonIsFollowedByAuthenticated**](UsersApi.md#usersCheckPersonIsFollowedByAuthenticated) | **GET** /user/following/{username} | Check if a person is followed by the authenticated user
[**usersCreateGpgKeyForAuthenticated**](UsersApi.md#usersCreateGpgKeyForAuthenticated) | **POST** /user/gpg_keys | Create a GPG key for the authenticated user
[**usersCreatePublicSshKeyForAuthenticated**](UsersApi.md#usersCreatePublicSshKeyForAuthenticated) | **POST** /user/keys | Create a public SSH key for the authenticated user
[**usersDeleteEmailForAuthenticated**](UsersApi.md#usersDeleteEmailForAuthenticated) | **DELETE** /user/emails | Delete an email address for the authenticated user
[**usersDeleteGpgKeyForAuthenticated**](UsersApi.md#usersDeleteGpgKeyForAuthenticated) | **DELETE** /user/gpg_keys/{gpg_key_id} | Delete a GPG key for the authenticated user
[**usersDeletePublicSshKeyForAuthenticated**](UsersApi.md#usersDeletePublicSshKeyForAuthenticated) | **DELETE** /user/keys/{key_id} | Delete a public SSH key for the authenticated user
[**usersFollow**](UsersApi.md#usersFollow) | **PUT** /user/following/{username} | Follow a user
[**usersGetAuthenticated**](UsersApi.md#usersGetAuthenticated) | **GET** /user | Get the authenticated user
[**usersGetByUsername**](UsersApi.md#usersGetByUsername) | **GET** /users/{username} | Get a user
[**usersGetContextForUser**](UsersApi.md#usersGetContextForUser) | **GET** /users/{username}/hovercard | Get contextual information for a user
[**usersGetGpgKeyForAuthenticated**](UsersApi.md#usersGetGpgKeyForAuthenticated) | **GET** /user/gpg_keys/{gpg_key_id} | Get a GPG key for the authenticated user
[**usersGetPublicSshKeyForAuthenticated**](UsersApi.md#usersGetPublicSshKeyForAuthenticated) | **GET** /user/keys/{key_id} | Get a public SSH key for the authenticated user
[**usersList**](UsersApi.md#usersList) | **GET** /users | List users
[**usersListBlockedByAuthenticated**](UsersApi.md#usersListBlockedByAuthenticated) | **GET** /user/blocks | List users blocked by the authenticated user
[**usersListEmailsForAuthenticated**](UsersApi.md#usersListEmailsForAuthenticated) | **GET** /user/emails | List email addresses for the authenticated user
[**usersListFollowedByAuthenticated**](UsersApi.md#usersListFollowedByAuthenticated) | **GET** /user/following | List the people the authenticated user follows
[**usersListFollowersForAuthenticatedUser**](UsersApi.md#usersListFollowersForAuthenticatedUser) | **GET** /user/followers | List followers of the authenticated user
[**usersListFollowersForUser**](UsersApi.md#usersListFollowersForUser) | **GET** /users/{username}/followers | List followers of a user
[**usersListFollowingForUser**](UsersApi.md#usersListFollowingForUser) | **GET** /users/{username}/following | List the people a user follows
[**usersListGpgKeysForAuthenticated**](UsersApi.md#usersListGpgKeysForAuthenticated) | **GET** /user/gpg_keys | List GPG keys for the authenticated user
[**usersListGpgKeysForUser**](UsersApi.md#usersListGpgKeysForUser) | **GET** /users/{username}/gpg_keys | List GPG keys for a user
[**usersListPublicEmailsForAuthenticated**](UsersApi.md#usersListPublicEmailsForAuthenticated) | **GET** /user/public_emails | List public email addresses for the authenticated user
[**usersListPublicKeysForUser**](UsersApi.md#usersListPublicKeysForUser) | **GET** /users/{username}/keys | List public keys for a user
[**usersListPublicSshKeysForAuthenticated**](UsersApi.md#usersListPublicSshKeysForAuthenticated) | **GET** /user/keys | List public SSH keys for the authenticated user
[**usersSetPrimaryEmailVisibilityForAuthenticated**](UsersApi.md#usersSetPrimaryEmailVisibilityForAuthenticated) | **PATCH** /user/email/visibility | Set primary email visibility for the authenticated user
[**usersUnblock**](UsersApi.md#usersUnblock) | **DELETE** /user/blocks/{username} | Unblock a user
[**usersUnfollow**](UsersApi.md#usersUnfollow) | **DELETE** /user/following/{username} | Unfollow a user
[**usersUpdateAuthenticated**](UsersApi.md#usersUpdateAuthenticated) | **PATCH** /user | Update the authenticated user

# **usersAddEmailForAuthenticated**
> List<Email> usersAddEmailForAuthenticated(body)

Add an email address for the authenticated user

This endpoint is accessible with the `user` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new Body165(); // Body165 | 

try {
    var result = api_instance.usersAddEmailForAuthenticated(body);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersAddEmailForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body165**](Body165.md)|  | [optional] 

### Return type

[**List<Email>**](Email.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersBlock**
> usersBlock(username)

Block a user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 

try {
    api_instance.usersBlock(username);
} catch (e) {
    print("Exception when calling UsersApi->usersBlock: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersCheckBlocked**
> usersCheckBlocked(username)

Check if a user is blocked by the authenticated user

If the user is blocked:  If the user is not blocked:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 

try {
    api_instance.usersCheckBlocked(username);
} catch (e) {
    print("Exception when calling UsersApi->usersCheckBlocked: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersCheckFollowingForUser**
> usersCheckFollowingForUser(username, targetUser)

Check if a user follows another user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 
var targetUser = targetUser_example; // String | 

try {
    api_instance.usersCheckFollowingForUser(username, targetUser);
} catch (e) {
    print("Exception when calling UsersApi->usersCheckFollowingForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **targetUser** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersCheckPersonIsFollowedByAuthenticated**
> usersCheckPersonIsFollowedByAuthenticated(username)

Check if a person is followed by the authenticated user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 

try {
    api_instance.usersCheckPersonIsFollowedByAuthenticated(username);
} catch (e) {
    print("Exception when calling UsersApi->usersCheckPersonIsFollowedByAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersCreateGpgKeyForAuthenticated**
> GpgKey usersCreateGpgKeyForAuthenticated(body)

Create a GPG key for the authenticated user

Adds a GPG key to the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth, or OAuth with at least `write:gpg_key` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new Body167(); // Body167 | 

try {
    var result = api_instance.usersCreateGpgKeyForAuthenticated(body);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersCreateGpgKeyForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body167**](Body167.md)|  | [optional] 

### Return type

[**GpgKey**](GpgKey.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersCreatePublicSshKeyForAuthenticated**
> Key usersCreatePublicSshKeyForAuthenticated(body)

Create a public SSH key for the authenticated user

Adds a public SSH key to the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth, or OAuth with at least `write:public_key` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new Body168(); // Body168 | 

try {
    var result = api_instance.usersCreatePublicSshKeyForAuthenticated(body);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersCreatePublicSshKeyForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body168**](Body168.md)|  | [optional] 

### Return type

[**Key**](Key.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersDeleteEmailForAuthenticated**
> usersDeleteEmailForAuthenticated(body)

Delete an email address for the authenticated user

This endpoint is accessible with the `user` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new Body166(); // Body166 | 

try {
    api_instance.usersDeleteEmailForAuthenticated(body);
} catch (e) {
    print("Exception when calling UsersApi->usersDeleteEmailForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body166**](Body166.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersDeleteGpgKeyForAuthenticated**
> usersDeleteGpgKeyForAuthenticated(gpgKeyId)

Delete a GPG key for the authenticated user

Removes a GPG key from the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth or via OAuth with at least `admin:gpg_key` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var gpgKeyId = 56; // int | gpg_key_id parameter

try {
    api_instance.usersDeleteGpgKeyForAuthenticated(gpgKeyId);
} catch (e) {
    print("Exception when calling UsersApi->usersDeleteGpgKeyForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gpgKeyId** | **int**| gpg_key_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersDeletePublicSshKeyForAuthenticated**
> usersDeletePublicSshKeyForAuthenticated(keyId)

Delete a public SSH key for the authenticated user

Removes a public SSH key from the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth or via OAuth with at least `admin:public_key` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var keyId = 56; // int | key_id parameter

try {
    api_instance.usersDeletePublicSshKeyForAuthenticated(keyId);
} catch (e) {
    print("Exception when calling UsersApi->usersDeletePublicSshKeyForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **int**| key_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersFollow**
> usersFollow(username)

Follow a user

Note that you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\"  Following a user requires the user to be logged in and authenticated with basic auth or OAuth with the `user:follow` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 

try {
    api_instance.usersFollow(username);
} catch (e) {
    print("Exception when calling UsersApi->usersFollow: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetAuthenticated**
> InlineResponse20027 usersGetAuthenticated()

Get the authenticated user

If the authenticated user is authenticated through basic authentication or OAuth with the `user` scope, then the response lists public and private profile information.  If the authenticated user is authenticated through OAuth without the `user` scope, then the response lists only public profile information.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();

try {
    var result = api_instance.usersGetAuthenticated();
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersGetAuthenticated: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetByUsername**
> InlineResponse20027 usersGetByUsername(username)

Get a user

Provides publicly available information about someone with a GitHub account.  GitHub Apps with the `Plan` user permission can use this endpoint to retrieve information about a user's GitHub plan. The GitHub App must be authenticated as a user. See \"[Identifying and authorizing users for GitHub Apps](https://developer.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/)\" for details about authentication. For an example response, see \"[Response with GitHub plan information](https://developer.github.com/v3/users/#response-with-github-plan-information).\"  The `email` key in the following response is the publicly visible email address from your GitHub [profile page](https://github.com/settings/profile). When setting up your profile, you can select a primary email address to be “public” which provides an email entry for this endpoint. If you do not set a public email address for `email`, then it will have a value of `null`. You only see publicly visible email addresses when authenticated with GitHub. For more information, see [Authentication](https://developer.github.com/v3/#authentication).  The Emails API enables you to list all of your email addresses, and toggle a primary email to be visible publicly. For more information, see \"[Emails API](https://developer.github.com/v3/users/emails/)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 

try {
    var result = api_instance.usersGetByUsername(username);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersGetByUsername: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetContextForUser**
> Hovercard usersGetContextForUser(username, subjectType, subjectId)

Get contextual information for a user

Provides hovercard information when authenticated through basic auth or OAuth with the `repo` scope. You can find out more about someone in relation to their pull requests, issues, repositories, and organizations.  The `subject_type` and `subject_id` parameters provide context for the person's hovercard, which returns more information than without the parameters. For example, if you wanted to find out more about `octocat` who owns the `Spoon-Knife` repository via cURL, it would look like this:  ```shell  curl -u username:token   https://api.github.com/users/octocat/hovercard?subject_type=repository&subject_id=1300192 ```

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 
var subjectType = subjectType_example; // String | Identifies which additional information you'd like to receive about the person's hovercard. Can be `organization`, `repository`, `issue`, `pull_request`. **Required** when using `subject_id`.
var subjectId = subjectId_example; // String | Uses the ID for the `subject_type` you specified. **Required** when using `subject_type`.

try {
    var result = api_instance.usersGetContextForUser(username, subjectType, subjectId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersGetContextForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **subjectType** | **String**| Identifies which additional information you&#x27;d like to receive about the person&#x27;s hovercard. Can be &#x60;organization&#x60;, &#x60;repository&#x60;, &#x60;issue&#x60;, &#x60;pull_request&#x60;. **Required** when using &#x60;subject_id&#x60;. | [optional] 
 **subjectId** | **String**| Uses the ID for the &#x60;subject_type&#x60; you specified. **Required** when using &#x60;subject_type&#x60;. | [optional] 

### Return type

[**Hovercard**](Hovercard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetGpgKeyForAuthenticated**
> GpgKey usersGetGpgKeyForAuthenticated(gpgKeyId)

Get a GPG key for the authenticated user

View extended details for a single GPG key. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:gpg_key` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var gpgKeyId = 56; // int | gpg_key_id parameter

try {
    var result = api_instance.usersGetGpgKeyForAuthenticated(gpgKeyId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersGetGpgKeyForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gpgKeyId** | **int**| gpg_key_id parameter | 

### Return type

[**GpgKey**](GpgKey.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetPublicSshKeyForAuthenticated**
> Key usersGetPublicSshKeyForAuthenticated(keyId)

Get a public SSH key for the authenticated user

View extended details for a single public SSH key. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:public_key` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var keyId = 56; // int | key_id parameter

try {
    var result = api_instance.usersGetPublicSshKeyForAuthenticated(keyId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersGetPublicSshKeyForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyId** | **int**| key_id parameter | 

### Return type

[**Key**](Key.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersList**
> List<SimpleUser> usersList(since, perPage)

List users

Lists all users, in the order that they signed up on GitHub. This list includes personal user accounts and organization accounts.  Note: Pagination is powered exclusively by the `since` parameter. Use the [Link header](https://developer.github.com/v3/#link-header) to get the URL for the next page of users.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var since = 56; // int | A user ID. Only return users with an ID greater than this ID.
var perPage = 56; // int | Results per page (max 100)

try {
    var result = api_instance.usersList(since, perPage);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **int**| A user ID. Only return users with an ID greater than this ID. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersListBlockedByAuthenticated**
> List<SimpleUser> usersListBlockedByAuthenticated()

List users blocked by the authenticated user

List the users you've blocked on your personal account.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();

try {
    var result = api_instance.usersListBlockedByAuthenticated();
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListBlockedByAuthenticated: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersListEmailsForAuthenticated**
> List<Email> usersListEmailsForAuthenticated(perPage, page)

List email addresses for the authenticated user

Lists all of your email addresses, and specifies which one is visible to the public. This endpoint is accessible with the `user:email` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListEmailsForAuthenticated(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListEmailsForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Email>**](Email.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersListFollowedByAuthenticated**
> List<SimpleUser> usersListFollowedByAuthenticated(perPage, page)

List the people the authenticated user follows

Lists the people who the authenticated user follows.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListFollowedByAuthenticated(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListFollowedByAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **usersListFollowersForAuthenticatedUser**
> List<SimpleUser> usersListFollowersForAuthenticatedUser(perPage, page)

List followers of the authenticated user

Lists the people following the authenticated user.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListFollowersForAuthenticatedUser(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListFollowersForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **usersListFollowersForUser**
> List<SimpleUser> usersListFollowersForUser(username, perPage, page)

List followers of a user

Lists the people following the specified user.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListFollowersForUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListFollowersForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
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

# **usersListFollowingForUser**
> List<SimpleUser> usersListFollowingForUser(username, perPage, page)

List the people a user follows

Lists the people who the specified user follows.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListFollowingForUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListFollowingForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
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

# **usersListGpgKeysForAuthenticated**
> List<GpgKey> usersListGpgKeysForAuthenticated(perPage, page)

List GPG keys for the authenticated user

Lists the current user's GPG keys. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:gpg_key` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListGpgKeysForAuthenticated(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListGpgKeysForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<GpgKey>**](GpgKey.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersListGpgKeysForUser**
> List<GpgKey> usersListGpgKeysForUser(username, perPage, page)

List GPG keys for a user

Lists the GPG keys for a user. This information is accessible by anyone.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListGpgKeysForUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListGpgKeysForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<GpgKey>**](GpgKey.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersListPublicEmailsForAuthenticated**
> List<Email> usersListPublicEmailsForAuthenticated(perPage, page)

List public email addresses for the authenticated user

Lists your publicly visible email address, which you can set with the [Set primary email visibility for the authenticated user](https://developer.github.com/v3/users/emails/#set-primary-email-visibility-for-the-authenticated-user) endpoint. This endpoint is accessible with the `user:email` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListPublicEmailsForAuthenticated(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListPublicEmailsForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Email>**](Email.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersListPublicKeysForUser**
> List<KeySimple> usersListPublicKeysForUser(username, perPage, page)

List public keys for a user

Lists the _verified_ public SSH keys for a user. This is accessible by anyone.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListPublicKeysForUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListPublicKeysForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<KeySimple>**](KeySimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersListPublicSshKeysForAuthenticated**
> List<Key> usersListPublicSshKeysForAuthenticated(perPage, page)

List public SSH keys for the authenticated user

Lists the public SSH keys for the authenticated user's GitHub account. Requires that you are authenticated via Basic Auth or via OAuth with at least `read:public_key` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.usersListPublicSshKeysForAuthenticated(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersListPublicSshKeysForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Key>**](Key.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersSetPrimaryEmailVisibilityForAuthenticated**
> List<Email> usersSetPrimaryEmailVisibilityForAuthenticated(body)

Set primary email visibility for the authenticated user

Sets the visibility for your primary email addresses.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new Body164(); // Body164 | 

try {
    var result = api_instance.usersSetPrimaryEmailVisibilityForAuthenticated(body);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersSetPrimaryEmailVisibilityForAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body164**](Body164.md)|  | [optional] 

### Return type

[**List<Email>**](Email.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUnblock**
> usersUnblock(username)

Unblock a user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 

try {
    api_instance.usersUnblock(username);
} catch (e) {
    print("Exception when calling UsersApi->usersUnblock: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUnfollow**
> usersUnfollow(username)

Unfollow a user

Unfollowing a user requires the user to be logged in and authenticated with basic auth or OAuth with the `user:follow` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var username = username_example; // String | 

try {
    api_instance.usersUnfollow(username);
} catch (e) {
    print("Exception when calling UsersApi->usersUnfollow: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUpdateAuthenticated**
> PrivateUser usersUpdateAuthenticated(body)

Update the authenticated user

**Note:** If your email is set to private and you send an `email` parameter as part of this request to update your profile, your privacy settings are still enforced: the email address will not be displayed on your public profile or via the API.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UsersApi();
var body = new Body163(); // Body163 | 

try {
    var result = api_instance.usersUpdateAuthenticated(body);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->usersUpdateAuthenticated: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body163**](Body163.md)|  | [optional] 

### Return type

[**PrivateUser**](PrivateUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

