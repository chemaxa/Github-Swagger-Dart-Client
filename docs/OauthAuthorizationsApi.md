# swagger.api.OauthAuthorizationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**oauthAuthorizationsCreateAuthorization**](OauthAuthorizationsApi.md#oauthAuthorizationsCreateAuthorization) | **POST** /authorizations | Create a new authorization
[**oauthAuthorizationsDeleteAuthorization**](OauthAuthorizationsApi.md#oauthAuthorizationsDeleteAuthorization) | **DELETE** /authorizations/{authorization_id} | Delete an authorization
[**oauthAuthorizationsDeleteGrant**](OauthAuthorizationsApi.md#oauthAuthorizationsDeleteGrant) | **DELETE** /applications/grants/{grant_id} | Delete a grant
[**oauthAuthorizationsGetAuthorization**](OauthAuthorizationsApi.md#oauthAuthorizationsGetAuthorization) | **GET** /authorizations/{authorization_id} | Get a single authorization
[**oauthAuthorizationsGetGrant**](OauthAuthorizationsApi.md#oauthAuthorizationsGetGrant) | **GET** /applications/grants/{grant_id} | Get a single grant
[**oauthAuthorizationsGetOrCreateAuthorizationForApp**](OauthAuthorizationsApi.md#oauthAuthorizationsGetOrCreateAuthorizationForApp) | **PUT** /authorizations/clients/{client_id} | Get-or-create an authorization for a specific app
[**oauthAuthorizationsGetOrCreateAuthorizationForAppAndFingerprint**](OauthAuthorizationsApi.md#oauthAuthorizationsGetOrCreateAuthorizationForAppAndFingerprint) | **PUT** /authorizations/clients/{client_id}/{fingerprint} | Get-or-create an authorization for a specific app and fingerprint
[**oauthAuthorizationsListAuthorizations**](OauthAuthorizationsApi.md#oauthAuthorizationsListAuthorizations) | **GET** /authorizations | List your authorizations
[**oauthAuthorizationsListGrants**](OauthAuthorizationsApi.md#oauthAuthorizationsListGrants) | **GET** /applications/grants | List your grants
[**oauthAuthorizationsUpdateAuthorization**](OauthAuthorizationsApi.md#oauthAuthorizationsUpdateAuthorization) | **PATCH** /authorizations/{authorization_id} | Update an existing authorization

# **oauthAuthorizationsCreateAuthorization**
> Authorization oauthAuthorizationsCreateAuthorization(body)

Create a new authorization

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  **Warning:** Apps must use the [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow) to obtain OAuth tokens that work with GitHub SAML organizations. OAuth tokens created using the Authorizations API will be unable to access GitHub SAML organizations. For more information, see the [blog post](https://developer.github.com/changes/2019-11-05-deprecated-passwords-and-authorizations-api).  Creates OAuth tokens using [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication). If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see \"[Working with two-factor authentication](https://developer.github.com/v3/auth/#working-with-two-factor-authentication).\"  To create tokens for a particular OAuth application using this endpoint, you must authenticate as the user you want to create an authorization for and provide the app's client ID and secret, found on your OAuth application's settings page. If your OAuth application intends to create multiple tokens for one user, use `fingerprint` to differentiate between them.  You can also create tokens on GitHub from the [personal access tokens settings](https://github.com/settings/tokens) page. Read more about these tokens in [the GitHub Help documentation](https://help.github.com/articles/creating-an-access-token-for-command-line-use).  Organizations that enforce SAML SSO require personal access tokens to be allowed. Read more about allowing tokens in [the GitHub Help documentation](https://help.github.com/articles/about-identity-and-access-management-with-saml-single-sign-on).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var body = new Body6(); // Body6 | 

try {
    var result = api_instance.oauthAuthorizationsCreateAuthorization(body);
    print(result);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsCreateAuthorization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body6**](Body6.md)|  | [optional] 

### Return type

[**Authorization**](Authorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizationsDeleteAuthorization**
> oauthAuthorizationsDeleteAuthorization(authorizationId)

Delete an authorization

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var authorizationId = 56; // int | authorization_id parameter

try {
    api_instance.oauthAuthorizationsDeleteAuthorization(authorizationId);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsDeleteAuthorization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | **int**| authorization_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizationsDeleteGrant**
> oauthAuthorizationsDeleteGrant(grantId)

Delete a grant

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  Deleting an OAuth application's grant will also delete all OAuth tokens associated with the application for your user. Once deleted, the application has no access to your account and is no longer listed on [the application authorizations settings screen within GitHub](https://github.com/settings/applications#authorized).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var grantId = 56; // int | grant_id parameter

try {
    api_instance.oauthAuthorizationsDeleteGrant(grantId);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsDeleteGrant: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantId** | **int**| grant_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizationsGetAuthorization**
> Authorization oauthAuthorizationsGetAuthorization(authorizationId)

Get a single authorization

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var authorizationId = 56; // int | authorization_id parameter

try {
    var result = api_instance.oauthAuthorizationsGetAuthorization(authorizationId);
    print(result);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsGetAuthorization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | **int**| authorization_id parameter | 

### Return type

[**Authorization**](Authorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizationsGetGrant**
> ApplicationGrant oauthAuthorizationsGetGrant(grantId)

Get a single grant

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var grantId = 56; // int | grant_id parameter

try {
    var result = api_instance.oauthAuthorizationsGetGrant(grantId);
    print(result);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsGetGrant: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantId** | **int**| grant_id parameter | 

### Return type

[**ApplicationGrant**](ApplicationGrant.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizationsGetOrCreateAuthorizationForApp**
> Authorization oauthAuthorizationsGetOrCreateAuthorizationForApp(clientId, body)

Get-or-create an authorization for a specific app

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  **Warning:** Apps must use the [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow) to obtain OAuth tokens that work with GitHub SAML organizations. OAuth tokens created using the Authorizations API will be unable to access GitHub SAML organizations. For more information, see the [blog post](https://developer.github.com/changes/2019-11-05-deprecated-passwords-and-authorizations-api).  Creates a new authorization for the specified OAuth application, only if an authorization for that application doesn't already exist for the user. The URL includes the 20 character client ID for the OAuth app that is requesting the token. It returns the user's existing authorization for the application if one is present. Otherwise, it creates and returns a new one.  If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see \"[Working with two-factor authentication](https://developer.github.com/v3/auth/#working-with-two-factor-authentication).\"  **Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var clientId = clientId_example; // String | 
var body = new Body7(); // Body7 | 

try {
    var result = api_instance.oauthAuthorizationsGetOrCreateAuthorizationForApp(clientId, body);
    print(result);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsGetOrCreateAuthorizationForApp: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **body** | [**Body7**](Body7.md)|  | [optional] 

### Return type

[**Authorization**](Authorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizationsGetOrCreateAuthorizationForAppAndFingerprint**
> Authorization oauthAuthorizationsGetOrCreateAuthorizationForAppAndFingerprint(clientId, fingerprint, body)

Get-or-create an authorization for a specific app and fingerprint

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  **Warning:** Apps must use the [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow) to obtain OAuth tokens that work with GitHub SAML organizations. OAuth tokens created using the Authorizations API will be unable to access GitHub SAML organizations. For more information, see the [blog post](https://developer.github.com/changes/2019-11-05-deprecated-passwords-and-authorizations-api).  This method will create a new authorization for the specified OAuth application, only if an authorization for that application and fingerprint do not already exist for the user. The URL includes the 20 character client ID for the OAuth app that is requesting the token. `fingerprint` is a unique string to distinguish an authorization from others created for the same client ID and user. It returns the user's existing authorization for the application if one is present. Otherwise, it creates and returns a new one.  If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see \"[Working with two-factor authentication](https://developer.github.com/v3/auth/#working-with-two-factor-authentication).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var clientId = clientId_example; // String | 
var fingerprint = fingerprint_example; // String | 
var body = new Body8(); // Body8 | 

try {
    var result = api_instance.oauthAuthorizationsGetOrCreateAuthorizationForAppAndFingerprint(clientId, fingerprint, body);
    print(result);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsGetOrCreateAuthorizationForAppAndFingerprint: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **fingerprint** | **String**|  | 
 **body** | [**Body8**](Body8.md)|  | [optional] 

### Return type

[**Authorization**](Authorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizationsListAuthorizations**
> List<Authorization> oauthAuthorizationsListAuthorizations(perPage, page)

List your authorizations

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.oauthAuthorizationsListAuthorizations(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsListAuthorizations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Authorization>**](Authorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizationsListGrants**
> List<ApplicationGrant> oauthAuthorizationsListGrants(perPage, page)

List your grants

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  You can use this API to list the set of OAuth applications that have been granted access to your account. Unlike the [list your authorizations](https://developer.github.com/v3/oauth_authorizations/#list-your-authorizations) API, this API does not manage individual tokens. This API will return one entry for each OAuth application that has been granted access to your account, regardless of the number of tokens an application has generated for your user. The list of OAuth applications returned matches what is shown on [the application authorizations settings screen within GitHub](https://github.com/settings/applications#authorized). The `scopes` returned are the union of scopes authorized for the application. For example, if an application has one token with `repo` scope and another token with `user` scope, the grant will return `[\"repo\", \"user\"]`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.oauthAuthorizationsListGrants(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsListGrants: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<ApplicationGrant>**](ApplicationGrant.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorizationsUpdateAuthorization**
> Authorization oauthAuthorizationsUpdateAuthorization(authorizationId, body)

Update an existing authorization

**Deprecation Notice:** GitHub will discontinue the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/), which is used by integrations to create personal access tokens and OAuth tokens, and you must now create these tokens using our [web application flow](https://developer.github.com/apps/building-oauth-apps/authorizing-oauth-apps/#web-application-flow). The [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/) will be removed on November, 13, 2020. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-auth-endpoint/).  If you have two-factor authentication setup, Basic Authentication for this endpoint requires that you use a one-time password (OTP) and your username and password instead of tokens. For more information, see \"[Working with two-factor authentication](https://developer.github.com/v3/auth/#working-with-two-factor-authentication).\"  You can only send one of these scope keys at a time.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OauthAuthorizationsApi();
var authorizationId = 56; // int | authorization_id parameter
var body = new Body9(); // Body9 | 

try {
    var result = api_instance.oauthAuthorizationsUpdateAuthorization(authorizationId, body);
    print(result);
} catch (e) {
    print("Exception when calling OauthAuthorizationsApi->oauthAuthorizationsUpdateAuthorization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | **int**| authorization_id parameter | 
 **body** | [**Body9**](Body9.md)|  | [optional] 

### Return type

[**Authorization**](Authorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

