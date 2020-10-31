# swagger.api.AppsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appsAddRepoToInstallation**](AppsApi.md#appsAddRepoToInstallation) | **PUT** /user/installations/{installation_id}/repositories/{repository_id} | Add a repository to an app installation
[**appsCheckAuthorization**](AppsApi.md#appsCheckAuthorization) | **GET** /applications/{client_id}/tokens/{access_token} | Check an authorization
[**appsCheckToken**](AppsApi.md#appsCheckToken) | **POST** /applications/{client_id}/token | Check a token
[**appsCreateContentAttachment**](AppsApi.md#appsCreateContentAttachment) | **POST** /content_references/{content_reference_id}/attachments | Create a content attachment
[**appsCreateFromManifest**](AppsApi.md#appsCreateFromManifest) | **POST** /app-manifests/{code}/conversions | Create a GitHub App from a manifest
[**appsCreateInstallationAccessToken**](AppsApi.md#appsCreateInstallationAccessToken) | **POST** /app/installations/{installation_id}/access_tokens | Create an installation access token for an app
[**appsDeleteAuthorization**](AppsApi.md#appsDeleteAuthorization) | **DELETE** /applications/{client_id}/grant | Delete an app authorization
[**appsDeleteInstallation**](AppsApi.md#appsDeleteInstallation) | **DELETE** /app/installations/{installation_id} | Delete an installation for the authenticated app
[**appsDeleteToken**](AppsApi.md#appsDeleteToken) | **DELETE** /applications/{client_id}/token | Delete an app token
[**appsGetAuthenticated**](AppsApi.md#appsGetAuthenticated) | **GET** /app | Get the authenticated app
[**appsGetBySlug**](AppsApi.md#appsGetBySlug) | **GET** /apps/{app_slug} | Get an app
[**appsGetInstallation**](AppsApi.md#appsGetInstallation) | **GET** /app/installations/{installation_id} | Get an installation for the authenticated app
[**appsGetOrgInstallation**](AppsApi.md#appsGetOrgInstallation) | **GET** /orgs/{org}/installation | Get an organization installation for the authenticated app
[**appsGetRepoInstallation**](AppsApi.md#appsGetRepoInstallation) | **GET** /repos/{owner}/{repo}/installation | Get a repository installation for the authenticated app
[**appsGetSubscriptionPlanForAccount**](AppsApi.md#appsGetSubscriptionPlanForAccount) | **GET** /marketplace_listing/accounts/{account_id} | Get a subscription plan for an account
[**appsGetSubscriptionPlanForAccountStubbed**](AppsApi.md#appsGetSubscriptionPlanForAccountStubbed) | **GET** /marketplace_listing/stubbed/accounts/{account_id} | Get a subscription plan for an account (stubbed)
[**appsGetUserInstallation**](AppsApi.md#appsGetUserInstallation) | **GET** /users/{username}/installation | Get a user installation for the authenticated app
[**appsGetWebhookConfigForApp**](AppsApi.md#appsGetWebhookConfigForApp) | **GET** /app/hook/config | Get a webhook configuration for an app
[**appsListAccountsForPlan**](AppsApi.md#appsListAccountsForPlan) | **GET** /marketplace_listing/plans/{plan_id}/accounts | List accounts for a plan
[**appsListAccountsForPlanStubbed**](AppsApi.md#appsListAccountsForPlanStubbed) | **GET** /marketplace_listing/stubbed/plans/{plan_id}/accounts | List accounts for a plan (stubbed)
[**appsListInstallationReposForAuthenticatedUser**](AppsApi.md#appsListInstallationReposForAuthenticatedUser) | **GET** /user/installations/{installation_id}/repositories | List repositories accessible to the user access token
[**appsListInstallations**](AppsApi.md#appsListInstallations) | **GET** /app/installations | List installations for the authenticated app
[**appsListInstallationsForAuthenticatedUser**](AppsApi.md#appsListInstallationsForAuthenticatedUser) | **GET** /user/installations | List app installations accessible to the user access token
[**appsListPlans**](AppsApi.md#appsListPlans) | **GET** /marketplace_listing/plans | List plans
[**appsListPlansStubbed**](AppsApi.md#appsListPlansStubbed) | **GET** /marketplace_listing/stubbed/plans | List plans (stubbed)
[**appsListReposAccessibleToInstallation**](AppsApi.md#appsListReposAccessibleToInstallation) | **GET** /installation/repositories | List repositories accessible to the app installation
[**appsListSubscriptionsForAuthenticatedUser**](AppsApi.md#appsListSubscriptionsForAuthenticatedUser) | **GET** /user/marketplace_purchases | List subscriptions for the authenticated user
[**appsListSubscriptionsForAuthenticatedUserStubbed**](AppsApi.md#appsListSubscriptionsForAuthenticatedUserStubbed) | **GET** /user/marketplace_purchases/stubbed | List subscriptions for the authenticated user (stubbed)
[**appsRemoveRepoFromInstallation**](AppsApi.md#appsRemoveRepoFromInstallation) | **DELETE** /user/installations/{installation_id}/repositories/{repository_id} | Remove a repository from an app installation
[**appsResetAuthorization**](AppsApi.md#appsResetAuthorization) | **POST** /applications/{client_id}/tokens/{access_token} | Reset an authorization
[**appsResetToken**](AppsApi.md#appsResetToken) | **PATCH** /applications/{client_id}/token | Reset a token
[**appsRevokeAuthorizationForApplication**](AppsApi.md#appsRevokeAuthorizationForApplication) | **DELETE** /applications/{client_id}/tokens/{access_token} | Revoke an authorization for an application
[**appsRevokeGrantForApplication**](AppsApi.md#appsRevokeGrantForApplication) | **DELETE** /applications/{client_id}/grants/{access_token} | Revoke a grant for an application
[**appsRevokeInstallationAccessToken**](AppsApi.md#appsRevokeInstallationAccessToken) | **DELETE** /installation/token | Revoke an installation access token
[**appsSuspendInstallation**](AppsApi.md#appsSuspendInstallation) | **PUT** /app/installations/{installation_id}/suspended | Suspend an app installation
[**appsUnsuspendInstallation**](AppsApi.md#appsUnsuspendInstallation) | **DELETE** /app/installations/{installation_id}/suspended | Unsuspend an app installation
[**appsUpdateWebhookConfigForApp**](AppsApi.md#appsUpdateWebhookConfigForApp) | **PATCH** /app/hook/config | Update a webhook configuration for an app

# **appsAddRepoToInstallation**
> appsAddRepoToInstallation(installationId, repositoryId)

Add a repository to an app installation

Add a single repository to an installation. The authenticated user must have admin access to the repository.  You must use a personal access token (which you can create via the [command line](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) or the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/#create-a-new-authorization)) or [Basic Authentication](https://developer.github.com/v3/auth/#basic-authentication) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var installationId = 56; // int | installation_id parameter
var repositoryId = 56; // int | 

try {
    api_instance.appsAddRepoToInstallation(installationId, repositoryId);
} catch (e) {
    print("Exception when calling AppsApi->appsAddRepoToInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installationId** | **int**| installation_id parameter | 
 **repositoryId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsCheckAuthorization**
> InlineResponse2001 appsCheckAuthorization(clientId, accessToken)

Check an authorization

**Deprecation Notice:** GitHub will replace and discontinue OAuth endpoints containing `access_token` in the path parameter. We are introducing new endpoints that allow you to securely manage tokens for OAuth Apps by using `access_token` as an input parameter. The OAuth Application API will be removed on May 5, 2021. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth applications can use a special API method for checking OAuth token validity without exceeding the normal rate limits for failed login attempts. Authentication works differently with this particular endpoint. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. Invalid tokens will return `404 NOT FOUND`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var clientId = clientId_example; // String | 
var accessToken = accessToken_example; // String | 

try {
    var result = api_instance.appsCheckAuthorization(clientId, accessToken);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsCheckAuthorization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **accessToken** | **String**|  | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsCheckToken**
> Authorization appsCheckToken(clientId, body)

Check a token

OAuth applications can use a special API method for checking OAuth token validity without exceeding the normal rate limits for failed login attempts. Authentication works differently with this particular endpoint. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) to use this endpoint, where the username is the OAuth application `client_id` and the password is its `client_secret`. Invalid tokens will return `404 NOT FOUND`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var clientId = clientId_example; // String | 
var body = new Body3(); // Body3 | 

try {
    var result = api_instance.appsCheckToken(clientId, body);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsCheckToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **body** | [**Body3**](Body3.md)|  | [optional] 

### Return type

[**Authorization**](Authorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsCreateContentAttachment**
> ContentReferenceAttachment appsCreateContentAttachment(contentReferenceId, body)

Create a content attachment

Creates an attachment under a content reference URL in the body or comment of an issue or pull request. Use the `id` of the content reference from the [`content_reference` event](https://developer.github.com/webhooks/event-payloads/#content_reference) to create an attachment.  The app must create a content attachment within six hours of the content reference URL being posted. See \"[Using content attachments](https://developer.github.com/apps/using-content-attachments/)\" for details about content attachments.  You must use an [installation access token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var contentReferenceId = 56; // int | 
var body = new Body10(); // Body10 | 

try {
    var result = api_instance.appsCreateContentAttachment(contentReferenceId, body);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsCreateContentAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentReferenceId** | **int**|  | 
 **body** | [**Body10**](Body10.md)|  | [optional] 

### Return type

[**ContentReferenceAttachment**](ContentReferenceAttachment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsCreateFromManifest**
> InlineResponse201 appsCreateFromManifest(code)

Create a GitHub App from a manifest

Use this endpoint to complete the handshake necessary when implementing the [GitHub App Manifest flow](https://developer.github.com/apps/building-github-apps/creating-github-apps-from-a-manifest/). When you create a GitHub App with the manifest flow, you receive a temporary `code` used to retrieve the GitHub App's `id`, `pem` (private key), and `webhook_secret`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var code = code_example; // String | 

try {
    var result = api_instance.appsCreateFromManifest(code);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsCreateFromManifest: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsCreateInstallationAccessToken**
> InstallationToken appsCreateInstallationAccessToken(installationId, body)

Create an installation access token for an app

Creates an installation access token that enables a GitHub App to make authenticated API requests for the app's installation on an organization or individual account. Installation tokens expire one hour from the time you create them. Using an expired token produces a status code of `401 - Unauthorized`, and requires creating a new installation token. By default the installation token has access to all repositories that the installation can access. To restrict the access to specific repositories, you can provide the `repository_ids` when creating the token. When you omit `repository_ids`, the response does not contain the `repositories` key.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var installationId = 56; // int | installation_id parameter
var body = new Body1(); // Body1 | 

try {
    var result = api_instance.appsCreateInstallationAccessToken(installationId, body);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsCreateInstallationAccessToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installationId** | **int**| installation_id parameter | 
 **body** | [**Body1**](Body1.md)|  | [optional] 

### Return type

[**InstallationToken**](InstallationToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsDeleteAuthorization**
> appsDeleteAuthorization(clientId, body)

Delete an app authorization

OAuth application owners can revoke a grant for their OAuth application and a specific user. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. You must also provide a valid OAuth `access_token` as an input parameter and the grant for the token's owner will be deleted. Deleting an OAuth application's grant will also delete all OAuth tokens associated with the application for the user. Once deleted, the application will have no access to the user's account and will no longer be listed on [the application authorizations settings screen within GitHub](https://github.com/settings/applications#authorized).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var clientId = clientId_example; // String | 
var body = new Body2(); // Body2 | 

try {
    api_instance.appsDeleteAuthorization(clientId, body);
} catch (e) {
    print("Exception when calling AppsApi->appsDeleteAuthorization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **body** | [**Body2**](Body2.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsDeleteInstallation**
> appsDeleteInstallation(installationId)

Delete an installation for the authenticated app

Uninstalls a GitHub App on a user, organization, or business account. If you prefer to temporarily suspend an app's access to your account's resources, then we recommend the \"[Suspend an app installation](https://developer.github.com/v3/apps/#suspend-an-app-installation)\" endpoint.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var installationId = 56; // int | installation_id parameter

try {
    api_instance.appsDeleteInstallation(installationId);
} catch (e) {
    print("Exception when calling AppsApi->appsDeleteInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installationId** | **int**| installation_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsDeleteToken**
> appsDeleteToken(clientId, body)

Delete an app token

OAuth application owners can revoke a single token for an OAuth application. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var clientId = clientId_example; // String | 
var body = new Body4(); // Body4 | 

try {
    api_instance.appsDeleteToken(clientId, body);
} catch (e) {
    print("Exception when calling AppsApi->appsDeleteToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **body** | [**Body4**](Body4.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetAuthenticated**
> Integration appsGetAuthenticated()

Get the authenticated app

Returns the GitHub App associated with the authentication credentials used. To see how many app installations are associated with this GitHub App, see the `installations_count` in the response. For more details about your app's installations, see the \"[List installations for the authenticated app](https://developer.github.com/v3/apps/#list-installations-for-the-authenticated-app)\" endpoint.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();

try {
    var result = api_instance.appsGetAuthenticated();
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsGetAuthenticated: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Integration**](Integration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetBySlug**
> Integration appsGetBySlug(appSlug)

Get an app

**Note**: The `:app_slug` is just the URL-friendly name of your GitHub App. You can find this on the settings page for your GitHub App (e.g., `https://github.com/settings/apps/:app_slug`).  If the GitHub App you specify is public, you can access this endpoint without authenticating. If the GitHub App you specify is private, you must authenticate with a [personal access token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) or an [installation access token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var appSlug = appSlug_example; // String | 

try {
    var result = api_instance.appsGetBySlug(appSlug);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsGetBySlug: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String**|  | 

### Return type

[**Integration**](Integration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetInstallation**
> Installation appsGetInstallation(installationId)

Get an installation for the authenticated app

Enables an authenticated GitHub App to find an installation's information using the installation id. The installation's account type (`target_type`) will be either an organization or a user account, depending which account the repository belongs to.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var installationId = 56; // int | installation_id parameter

try {
    var result = api_instance.appsGetInstallation(installationId);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsGetInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installationId** | **int**| installation_id parameter | 

### Return type

[**Installation**](Installation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetOrgInstallation**
> Installation appsGetOrgInstallation(org)

Get an organization installation for the authenticated app

Enables an authenticated GitHub App to find the organization's installation information.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var org = org_example; // String | 

try {
    var result = api_instance.appsGetOrgInstallation(org);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsGetOrgInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**Installation**](Installation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetRepoInstallation**
> Installation appsGetRepoInstallation(owner, repo)

Get a repository installation for the authenticated app

Enables an authenticated GitHub App to find the repository's installation information. The installation's account type will be either an organization or a user account, depending which account the repository belongs to.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.appsGetRepoInstallation(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsGetRepoInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**Installation**](Installation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetSubscriptionPlanForAccount**
> MarketplacePurchase appsGetSubscriptionPlanForAccount(accountId)

Get a subscription plan for an account

Shows whether the user or organization account actively subscribes to a plan listed by the authenticated GitHub App. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var accountId = 56; // int | account_id parameter

try {
    var result = api_instance.appsGetSubscriptionPlanForAccount(accountId);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsGetSubscriptionPlanForAccount: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **int**| account_id parameter | 

### Return type

[**MarketplacePurchase**](MarketplacePurchase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetSubscriptionPlanForAccountStubbed**
> MarketplacePurchase appsGetSubscriptionPlanForAccountStubbed(accountId)

Get a subscription plan for an account (stubbed)

Shows whether the user or organization account actively subscribes to a plan listed by the authenticated GitHub App. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var accountId = 56; // int | account_id parameter

try {
    var result = api_instance.appsGetSubscriptionPlanForAccountStubbed(accountId);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsGetSubscriptionPlanForAccountStubbed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **int**| account_id parameter | 

### Return type

[**MarketplacePurchase**](MarketplacePurchase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetUserInstallation**
> Installation appsGetUserInstallation(username)

Get a user installation for the authenticated app

Enables an authenticated GitHub App to find the user’s installation information.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var username = username_example; // String | 

try {
    var result = api_instance.appsGetUserInstallation(username);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsGetUserInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

[**Installation**](Installation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsGetWebhookConfigForApp**
> WebhookConfig appsGetWebhookConfigForApp()

Get a webhook configuration for an app

Returns the webhook configuration for a GitHub App. For more information about configuring a webhook for your app, see \"[Creating a GitHub App](/developers/apps/creating-a-github-app).\"  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();

try {
    var result = api_instance.appsGetWebhookConfigForApp();
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsGetWebhookConfigForApp: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookConfig**](WebhookConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListAccountsForPlan**
> List<MarketplacePurchase> appsListAccountsForPlan(planId, sort, direction, perPage, page)

List accounts for a plan

Returns user and organization accounts associated with the specified plan, including free plans. For per-seat pricing, you see the list of accounts that have purchased the plan, including the number of seats purchased. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var planId = 56; // int | plan_id parameter
var sort = sort_example; // String | One of `created` (when the repository was starred) or `updated` (when it was last pushed to).
var direction = direction_example; // String | To return the oldest accounts first, set to `asc`. Can be one of `asc` or `desc`. Ignored without the `sort` parameter.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.appsListAccountsForPlan(planId, sort, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListAccountsForPlan: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planId** | **int**| plan_id parameter | 
 **sort** | **String**| One of &#x60;created&#x60; (when the repository was starred) or &#x60;updated&#x60; (when it was last pushed to). | [optional] [default to created]
 **direction** | **String**| To return the oldest accounts first, set to &#x60;asc&#x60;. Can be one of &#x60;asc&#x60; or &#x60;desc&#x60;. Ignored without the &#x60;sort&#x60; parameter. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<MarketplacePurchase>**](MarketplacePurchase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListAccountsForPlanStubbed**
> List<MarketplacePurchase> appsListAccountsForPlanStubbed(planId, sort, direction, perPage, page)

List accounts for a plan (stubbed)

Returns repository and organization accounts associated with the specified plan, including free plans. For per-seat pricing, you see the list of accounts that have purchased the plan, including the number of seats purchased. When someone submits a plan change that won't be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var planId = 56; // int | plan_id parameter
var sort = sort_example; // String | One of `created` (when the repository was starred) or `updated` (when it was last pushed to).
var direction = direction_example; // String | To return the oldest accounts first, set to `asc`. Can be one of `asc` or `desc`. Ignored without the `sort` parameter.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.appsListAccountsForPlanStubbed(planId, sort, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListAccountsForPlanStubbed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planId** | **int**| plan_id parameter | 
 **sort** | **String**| One of &#x60;created&#x60; (when the repository was starred) or &#x60;updated&#x60; (when it was last pushed to). | [optional] [default to created]
 **direction** | **String**| To return the oldest accounts first, set to &#x60;asc&#x60;. Can be one of &#x60;asc&#x60; or &#x60;desc&#x60;. Ignored without the &#x60;sort&#x60; parameter. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<MarketplacePurchase>**](MarketplacePurchase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListInstallationReposForAuthenticatedUser**
> InlineResponse20028 appsListInstallationReposForAuthenticatedUser(installationId, perPage, page)

List repositories accessible to the user access token

List repositories that the authenticated user has explicit permission (`:read`, `:write`, or `:admin`) to access for an installation.  The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.  You must use a [user-to-server OAuth access token](https://developer.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint.  The access the user has to each repository is included in the hash under the `permissions` key.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var installationId = 56; // int | installation_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.appsListInstallationReposForAuthenticatedUser(installationId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListInstallationReposForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installationId** | **int**| installation_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListInstallations**
> List<Installation> appsListInstallations(perPage, page, since, outdated)

List installations for the authenticated app

You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.  The permissions the installation has are included under the `permissions` key.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var outdated = outdated_example; // String | 

try {
    var result = api_instance.appsListInstallations(perPage, page, since, outdated);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListInstallations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **outdated** | **String**|  | [optional] 

### Return type

[**List<Installation>**](Installation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListInstallationsForAuthenticatedUser**
> InlineResponse20011 appsListInstallationsForAuthenticatedUser(perPage, page)

List app installations accessible to the user access token

Lists installations of your GitHub App that the authenticated user has explicit permission (`:read`, `:write`, or `:admin`) to access.  You must use a [user-to-server OAuth access token](https://developer.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint.  The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.  You can find the permissions for the installation under the `permissions` key.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.appsListInstallationsForAuthenticatedUser(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListInstallationsForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListPlans**
> List<MarketplaceListingPlan> appsListPlans(perPage, page)

List plans

Lists all plans that are part of your GitHub Marketplace listing.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.appsListPlans(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListPlans: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<MarketplaceListingPlan>**](MarketplaceListingPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListPlansStubbed**
> List<MarketplaceListingPlan> appsListPlansStubbed(perPage, page)

List plans (stubbed)

Lists all plans that are part of your GitHub Marketplace listing.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.appsListPlansStubbed(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListPlansStubbed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<MarketplaceListingPlan>**](MarketplaceListingPlan.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListReposAccessibleToInstallation**
> InlineResponse2005 appsListReposAccessibleToInstallation(perPage, page)

List repositories accessible to the app installation

List repositories that an app installation can access.  You must use an [installation access token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.appsListReposAccessibleToInstallation(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListReposAccessibleToInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListSubscriptionsForAuthenticatedUser**
> List<UserMarketplacePurchase> appsListSubscriptionsForAuthenticatedUser(perPage, page)

List subscriptions for the authenticated user

Lists the active subscriptions for the authenticated user. You must use a [user-to-server OAuth access token](https://developer.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint. . OAuth Apps must authenticate using an [OAuth token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.appsListSubscriptionsForAuthenticatedUser(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListSubscriptionsForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<UserMarketplacePurchase>**](UserMarketplacePurchase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsListSubscriptionsForAuthenticatedUserStubbed**
> List<UserMarketplacePurchase> appsListSubscriptionsForAuthenticatedUserStubbed(perPage, page)

List subscriptions for the authenticated user (stubbed)

Lists the active subscriptions for the authenticated user. You must use a [user-to-server OAuth access token](https://developer.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint. . OAuth Apps must authenticate using an [OAuth token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.appsListSubscriptionsForAuthenticatedUserStubbed(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsListSubscriptionsForAuthenticatedUserStubbed: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<UserMarketplacePurchase>**](UserMarketplacePurchase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsRemoveRepoFromInstallation**
> appsRemoveRepoFromInstallation(installationId, repositoryId)

Remove a repository from an app installation

Remove a single repository from an installation. The authenticated user must have admin access to the repository.  You must use a personal access token (which you can create via the [command line](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) or the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/#create-a-new-authorization)) or [Basic Authentication](https://developer.github.com/v3/auth/#basic-authentication) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var installationId = 56; // int | installation_id parameter
var repositoryId = 56; // int | 

try {
    api_instance.appsRemoveRepoFromInstallation(installationId, repositoryId);
} catch (e) {
    print("Exception when calling AppsApi->appsRemoveRepoFromInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installationId** | **int**| installation_id parameter | 
 **repositoryId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsResetAuthorization**
> Authorization appsResetAuthorization(clientId, accessToken)

Reset an authorization

**Deprecation Notice:** GitHub will replace and discontinue OAuth endpoints containing `access_token` in the path parameter. We are introducing new endpoints that allow you to securely manage tokens for OAuth Apps by using `access_token` as an input parameter. The OAuth Application API will be removed on May 5, 2021. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth applications can use this API method to reset a valid OAuth token without end-user involvement. Applications must save the \"token\" property in the response because changes take effect immediately. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. Invalid tokens will return `404 NOT FOUND`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var clientId = clientId_example; // String | 
var accessToken = accessToken_example; // String | 

try {
    var result = api_instance.appsResetAuthorization(clientId, accessToken);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsResetAuthorization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **accessToken** | **String**|  | 

### Return type

[**Authorization**](Authorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsResetToken**
> Authorization appsResetToken(clientId, body)

Reset a token

OAuth applications can use this API method to reset a valid OAuth token without end-user involvement. Applications must save the \"token\" property in the response because changes take effect immediately. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. Invalid tokens will return `404 NOT FOUND`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var clientId = clientId_example; // String | 
var body = new Body5(); // Body5 | 

try {
    var result = api_instance.appsResetToken(clientId, body);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsResetToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **body** | [**Body5**](Body5.md)|  | [optional] 

### Return type

[**Authorization**](Authorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsRevokeAuthorizationForApplication**
> appsRevokeAuthorizationForApplication(clientId, accessToken)

Revoke an authorization for an application

**Deprecation Notice:** GitHub will replace and discontinue OAuth endpoints containing `access_token` in the path parameter. We are introducing new endpoints that allow you to securely manage tokens for OAuth Apps by using `access_token` as an input parameter. The OAuth Application API will be removed on May 5, 2021. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth application owners can revoke a single token for an OAuth application. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var clientId = clientId_example; // String | 
var accessToken = accessToken_example; // String | 

try {
    api_instance.appsRevokeAuthorizationForApplication(clientId, accessToken);
} catch (e) {
    print("Exception when calling AppsApi->appsRevokeAuthorizationForApplication: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **accessToken** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsRevokeGrantForApplication**
> appsRevokeGrantForApplication(clientId, accessToken)

Revoke a grant for an application

**Deprecation Notice:** GitHub will replace and discontinue OAuth endpoints containing `access_token` in the path parameter. We are introducing new endpoints that allow you to securely manage tokens for OAuth Apps by using `access_token` as an input parameter. The OAuth Application API will be removed on May 5, 2021. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth application owners can revoke a grant for their OAuth application and a specific user. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. You must also provide a valid token as `:access_token` and the grant for the token's owner will be deleted.  Deleting an OAuth application's grant will also delete all OAuth tokens associated with the application for the user. Once deleted, the application will have no access to the user's account and will no longer be listed on [the Applications settings page under \"Authorized OAuth Apps\" on GitHub](https://github.com/settings/applications#authorized).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var clientId = clientId_example; // String | 
var accessToken = accessToken_example; // String | 

try {
    api_instance.appsRevokeGrantForApplication(clientId, accessToken);
} catch (e) {
    print("Exception when calling AppsApi->appsRevokeGrantForApplication: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **accessToken** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsRevokeInstallationAccessToken**
> appsRevokeInstallationAccessToken()

Revoke an installation access token

Revokes the installation token you're using to authenticate as an installation and access this endpoint.  Once an installation token is revoked, the token is invalidated and cannot be used. Other endpoints that require the revoked installation token must have a new installation token to work. You can create a new token using the \"[Create an installation access token for an app](https://developer.github.com/v3/apps/#create-an-installation-access-token-for-an-app)\" endpoint.  You must use an [installation access token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();

try {
    api_instance.appsRevokeInstallationAccessToken();
} catch (e) {
    print("Exception when calling AppsApi->appsRevokeInstallationAccessToken: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsSuspendInstallation**
> appsSuspendInstallation(installationId)

Suspend an app installation

**Note:** Suspending a GitHub App installation is currently in beta and subject to change. Before you can suspend a GitHub App, the app owner must enable suspending installations for the app by opting-in to the beta. For more information, see \"[Suspending a GitHub App installation](https://developer.github.com/apps/managing-github-apps/suspending-a-github-app-installation/).\"  Suspends a GitHub App on a user, organization, or business account, which blocks the app from accessing the account's resources. When a GitHub App is suspended, the app's access to the GitHub API or webhook events is blocked for that account.  To suspend a GitHub App, you must be an account owner or have admin permissions in the repository or organization where the app is installed.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var installationId = 56; // int | installation_id parameter

try {
    api_instance.appsSuspendInstallation(installationId);
} catch (e) {
    print("Exception when calling AppsApi->appsSuspendInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installationId** | **int**| installation_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsUnsuspendInstallation**
> appsUnsuspendInstallation(installationId)

Unsuspend an app installation

**Note:** Suspending a GitHub App installation is currently in beta and subject to change. Before you can suspend a GitHub App, the app owner must enable suspending installations for the app by opting-in to the beta. For more information, see \"[Suspending a GitHub App installation](https://developer.github.com/apps/managing-github-apps/suspending-a-github-app-installation/).\"  Removes a GitHub App installation suspension.  To unsuspend a GitHub App, you must be an account owner or have admin permissions in the repository or organization where the app is installed and suspended.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var installationId = 56; // int | installation_id parameter

try {
    api_instance.appsUnsuspendInstallation(installationId);
} catch (e) {
    print("Exception when calling AppsApi->appsUnsuspendInstallation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installationId** | **int**| installation_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appsUpdateWebhookConfigForApp**
> WebhookConfig appsUpdateWebhookConfigForApp(body)

Update a webhook configuration for an app

Updates the webhook configuration for a GitHub App. For more information about configuring a webhook for your app, see \"[Creating a GitHub App](/developers/apps/creating-a-github-app).\"  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppsApi();
var body = new Body(); // Body | 

try {
    var result = api_instance.appsUpdateWebhookConfigForApp(body);
    print(result);
} catch (e) {
    print("Exception when calling AppsApi->appsUpdateWebhookConfigForApp: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)|  | [optional] 

### Return type

[**WebhookConfig**](WebhookConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

