# swagger.api.OrgsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orgsBlockUser**](OrgsApi.md#orgsBlockUser) | **PUT** /orgs/{org}/blocks/{username} | Block a user from an organization
[**orgsCheckBlockedUser**](OrgsApi.md#orgsCheckBlockedUser) | **GET** /orgs/{org}/blocks/{username} | Check if a user is blocked by an organization
[**orgsCheckMembershipForUser**](OrgsApi.md#orgsCheckMembershipForUser) | **GET** /orgs/{org}/members/{username} | Check organization membership for a user
[**orgsCheckPublicMembershipForUser**](OrgsApi.md#orgsCheckPublicMembershipForUser) | **GET** /orgs/{org}/public_members/{username} | Check public organization membership for a user
[**orgsConvertMemberToOutsideCollaborator**](OrgsApi.md#orgsConvertMemberToOutsideCollaborator) | **PUT** /orgs/{org}/outside_collaborators/{username} | Convert an organization member to outside collaborator
[**orgsCreateInvitation**](OrgsApi.md#orgsCreateInvitation) | **POST** /orgs/{org}/invitations | Create an organization invitation
[**orgsCreateWebhook**](OrgsApi.md#orgsCreateWebhook) | **POST** /orgs/{org}/hooks | Create an organization webhook
[**orgsDeleteWebhook**](OrgsApi.md#orgsDeleteWebhook) | **DELETE** /orgs/{org}/hooks/{hook_id} | Delete an organization webhook
[**orgsGet**](OrgsApi.md#orgsGet) | **GET** /orgs/{org} | Get an organization
[**orgsGetMembershipForAuthenticatedUser**](OrgsApi.md#orgsGetMembershipForAuthenticatedUser) | **GET** /user/memberships/orgs/{org} | Get an organization membership for the authenticated user
[**orgsGetMembershipForUser**](OrgsApi.md#orgsGetMembershipForUser) | **GET** /orgs/{org}/memberships/{username} | Get organization membership for a user
[**orgsGetWebhook**](OrgsApi.md#orgsGetWebhook) | **GET** /orgs/{org}/hooks/{hook_id} | Get an organization webhook
[**orgsGetWebhookConfigForOrg**](OrgsApi.md#orgsGetWebhookConfigForOrg) | **GET** /orgs/{org}/hooks/{hook_id}/config | Get a webhook configuration for an organization
[**orgsList**](OrgsApi.md#orgsList) | **GET** /organizations | List organizations
[**orgsListAppInstallations**](OrgsApi.md#orgsListAppInstallations) | **GET** /orgs/{org}/installations | List app installations for an organization
[**orgsListBlockedUsers**](OrgsApi.md#orgsListBlockedUsers) | **GET** /orgs/{org}/blocks | List users blocked by an organization
[**orgsListForAuthenticatedUser**](OrgsApi.md#orgsListForAuthenticatedUser) | **GET** /user/orgs | List organizations for the authenticated user
[**orgsListForUser**](OrgsApi.md#orgsListForUser) | **GET** /users/{username}/orgs | List organizations for a user
[**orgsListInvitationTeams**](OrgsApi.md#orgsListInvitationTeams) | **GET** /orgs/{org}/invitations/{invitation_id}/teams | List organization invitation teams
[**orgsListMembers**](OrgsApi.md#orgsListMembers) | **GET** /orgs/{org}/members | List organization members
[**orgsListMembershipsForAuthenticatedUser**](OrgsApi.md#orgsListMembershipsForAuthenticatedUser) | **GET** /user/memberships/orgs | List organization memberships for the authenticated user
[**orgsListOutsideCollaborators**](OrgsApi.md#orgsListOutsideCollaborators) | **GET** /orgs/{org}/outside_collaborators | List outside collaborators for an organization
[**orgsListPendingInvitations**](OrgsApi.md#orgsListPendingInvitations) | **GET** /orgs/{org}/invitations | List pending organization invitations
[**orgsListPublicMembers**](OrgsApi.md#orgsListPublicMembers) | **GET** /orgs/{org}/public_members | List public organization members
[**orgsListSamlSsoAuthorizations**](OrgsApi.md#orgsListSamlSsoAuthorizations) | **GET** /orgs/{org}/credential-authorizations | List SAML SSO authorizations for an organization
[**orgsListWebhooks**](OrgsApi.md#orgsListWebhooks) | **GET** /orgs/{org}/hooks | List organization webhooks
[**orgsPingWebhook**](OrgsApi.md#orgsPingWebhook) | **POST** /orgs/{org}/hooks/{hook_id}/pings | Ping an organization webhook
[**orgsRemoveMember**](OrgsApi.md#orgsRemoveMember) | **DELETE** /orgs/{org}/members/{username} | Remove an organization member
[**orgsRemoveMembershipForUser**](OrgsApi.md#orgsRemoveMembershipForUser) | **DELETE** /orgs/{org}/memberships/{username} | Remove organization membership for a user
[**orgsRemoveOutsideCollaborator**](OrgsApi.md#orgsRemoveOutsideCollaborator) | **DELETE** /orgs/{org}/outside_collaborators/{username} | Remove outside collaborator from an organization
[**orgsRemovePublicMembershipForAuthenticatedUser**](OrgsApi.md#orgsRemovePublicMembershipForAuthenticatedUser) | **DELETE** /orgs/{org}/public_members/{username} | Remove public organization membership for the authenticated user
[**orgsRemoveSamlSsoAuthorization**](OrgsApi.md#orgsRemoveSamlSsoAuthorization) | **DELETE** /orgs/{org}/credential-authorizations/{credential_id} | Remove a SAML SSO authorization for an organization
[**orgsSetMembershipForUser**](OrgsApi.md#orgsSetMembershipForUser) | **PUT** /orgs/{org}/memberships/{username} | Set organization membership for a user
[**orgsSetPublicMembershipForAuthenticatedUser**](OrgsApi.md#orgsSetPublicMembershipForAuthenticatedUser) | **PUT** /orgs/{org}/public_members/{username} | Set public organization membership for the authenticated user
[**orgsUnblockUser**](OrgsApi.md#orgsUnblockUser) | **DELETE** /orgs/{org}/blocks/{username} | Unblock a user from an organization
[**orgsUpdate**](OrgsApi.md#orgsUpdate) | **PATCH** /orgs/{org} | Update an organization
[**orgsUpdateMembershipForAuthenticatedUser**](OrgsApi.md#orgsUpdateMembershipForAuthenticatedUser) | **PATCH** /user/memberships/orgs/{org} | Update an organization membership for the authenticated user
[**orgsUpdateWebhook**](OrgsApi.md#orgsUpdateWebhook) | **PATCH** /orgs/{org}/hooks/{hook_id} | Update an organization webhook
[**orgsUpdateWebhookConfigForOrg**](OrgsApi.md#orgsUpdateWebhookConfigForOrg) | **PATCH** /orgs/{org}/hooks/{hook_id}/config | Update a webhook configuration for an organization

# **orgsBlockUser**
> orgsBlockUser(org, username)

Block a user from an organization

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsBlockUser(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsBlockUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsCheckBlockedUser**
> orgsCheckBlockedUser(org, username)

Check if a user is blocked by an organization

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsCheckBlockedUser(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsCheckBlockedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsCheckMembershipForUser**
> orgsCheckMembershipForUser(org, username)

Check organization membership for a user

Check if a user is, publicly or privately, a member of the organization.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsCheckMembershipForUser(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsCheckMembershipForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsCheckPublicMembershipForUser**
> orgsCheckPublicMembershipForUser(org, username)

Check public organization membership for a user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsCheckPublicMembershipForUser(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsCheckPublicMembershipForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsConvertMemberToOutsideCollaborator**
> orgsConvertMemberToOutsideCollaborator(org, username)

Convert an organization member to outside collaborator

When an organization member is converted to an outside collaborator, they'll only have access to the repositories that their current team membership allows. The user will no longer be a member of the organization. For more information, see \"[Converting an organization member to an outside collaborator](https://help.github.com/articles/converting-an-organization-member-to-an-outside-collaborator/)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsConvertMemberToOutsideCollaborator(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsConvertMemberToOutsideCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsCreateInvitation**
> OrganizationInvitation orgsCreateInvitation(org, body)

Create an organization invitation

Invite people to an organization by using their GitHub user ID or their email address. In order to create invitations in an organization, the authenticated user must be an organization owner.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var body = new Body37(); // Body37 | 

try {
    var result = api_instance.orgsCreateInvitation(org, body);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsCreateInvitation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body37**](Body37.md)|  | [optional] 

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsCreateWebhook**
> OrgHook orgsCreateWebhook(org, body)

Create an organization webhook

Here's how you can create a hook that posts payloads in JSON format:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var body = new Body33(); // Body33 | 

try {
    var result = api_instance.orgsCreateWebhook(org, body);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsCreateWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body33**](Body33.md)|  | [optional] 

### Return type

[**OrgHook**](OrgHook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsDeleteWebhook**
> orgsDeleteWebhook(org, hookId)

Delete an organization webhook

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var hookId = 56; // int | 

try {
    api_instance.orgsDeleteWebhook(org, hookId);
} catch (e) {
    print("Exception when calling OrgsApi->orgsDeleteWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **hookId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsGet**
> OrganizationFull orgsGet(org)

Get an organization

To see many of the organization response values, you need to be an authenticated organization owner with the `admin:org` scope. When the value of `two_factor_requirement_enabled` is `true`, the organization requires all members, billing managers, and outside collaborators to enable [two-factor authentication](https://help.github.com/articles/securing-your-account-with-two-factor-authentication-2fa/).  GitHub Apps with the `Organization plan` permission can use this endpoint to retrieve information about an organization's GitHub plan. See \"[Authenticating with GitHub Apps](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/)\" for details. For an example response, see \"[Response with GitHub plan information](https://developer.github.com/v3/orgs/#response-with-github-plan-information).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 

try {
    var result = api_instance.orgsGet(org);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**OrganizationFull**](OrganizationFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsGetMembershipForAuthenticatedUser**
> OrgMembership orgsGetMembershipForAuthenticatedUser(org)

Get an organization membership for the authenticated user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 

try {
    var result = api_instance.orgsGetMembershipForAuthenticatedUser(org);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsGetMembershipForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**OrgMembership**](OrgMembership.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsGetMembershipForUser**
> OrgMembership orgsGetMembershipForUser(org, username)

Get organization membership for a user

In order to get a user's membership with an organization, the authenticated user must be an organization member.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    var result = api_instance.orgsGetMembershipForUser(org, username);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsGetMembershipForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

[**OrgMembership**](OrgMembership.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsGetWebhook**
> OrgHook orgsGetWebhook(org, hookId)

Get an organization webhook

Returns a webhook configured in an organization. To get only the webhook `config` properties, see \"[Get a webhook configuration for an organization](/rest/reference/orgs#get-a-webhook-configuration-for-an-organization).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var hookId = 56; // int | 

try {
    var result = api_instance.orgsGetWebhook(org, hookId);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsGetWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **hookId** | **int**|  | 

### Return type

[**OrgHook**](OrgHook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsGetWebhookConfigForOrg**
> WebhookConfig orgsGetWebhookConfigForOrg(org, hookId)

Get a webhook configuration for an organization

Returns the webhook configuration for an organization. To get more information about the webhook, including the `active` state and `events`, use \"[Get an organization webhook ](/rest/reference/orgs#get-an-organization-webhook).\"  Access tokens must have the `admin:org_hook` scope, and GitHub Apps must have the `organization_hooks:read` permission.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var hookId = 56; // int | 

try {
    var result = api_instance.orgsGetWebhookConfigForOrg(org, hookId);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsGetWebhookConfigForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **hookId** | **int**|  | 

### Return type

[**WebhookConfig**](WebhookConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsList**
> List<OrganizationSimple> orgsList(since, perPage)

List organizations

Lists all organizations, in the order that they were created on GitHub.  **Note:** Pagination is powered exclusively by the `since` parameter. Use the [Link header](https://developer.github.com/v3/#link-header) to get the URL for the next page of organizations.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var since = 56; // int | An organization ID. Only return organizations with an ID greater than this ID.
var perPage = 56; // int | Results per page (max 100)

try {
    var result = api_instance.orgsList(since, perPage);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **int**| An organization ID. Only return organizations with an ID greater than this ID. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]

### Return type

[**List<OrganizationSimple>**](OrganizationSimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsListAppInstallations**
> InlineResponse20011 orgsListAppInstallations(org, perPage, page)

List app installations for an organization

Lists all GitHub Apps in an organization. The installation count includes all GitHub Apps installed on repositories in the organization. You must be an organization owner with `admin:read` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListAppInstallations(org, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListAppInstallations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
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

# **orgsListBlockedUsers**
> List<SimpleUser> orgsListBlockedUsers(org)

List users blocked by an organization

List the users blocked by an organization.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 

try {
    var result = api_instance.orgsListBlockedUsers(org);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListBlockedUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsListForAuthenticatedUser**
> List<OrganizationSimple> orgsListForAuthenticatedUser(perPage, page)

List organizations for the authenticated user

List organizations for the authenticated user.  **OAuth scope requirements**  This only lists organizations that your authorization allows you to operate on in some way (e.g., you can list teams with `read:org` scope, you can publicize your organization membership with `user` scope, etc.). Therefore, this API requires at least `user` or `read:org` scope. OAuth requests with insufficient scope receive a `403 Forbidden` response.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListForAuthenticatedUser(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<OrganizationSimple>**](OrganizationSimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsListForUser**
> List<OrganizationSimple> orgsListForUser(username, perPage, page)

List organizations for a user

List [public organization memberships](https://help.github.com/articles/publicizing-or-concealing-organization-membership) for the specified user.  This method only lists _public_ memberships, regardless of authentication. If you need to fetch all of the organization memberships (public and private) for the authenticated user, use the [List organizations for the authenticated user](https://developer.github.com/v3/orgs/#list-organizations-for-the-authenticated-user) API instead.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var username = username_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListForUser(username, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<OrganizationSimple>**](OrganizationSimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsListInvitationTeams**
> List<Team> orgsListInvitationTeams(org, invitationId, perPage, page)

List organization invitation teams

List all teams associated with an invitation. In order to see invitations in an organization, the authenticated user must be an organization owner.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var invitationId = 56; // int | invitation_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListInvitationTeams(org, invitationId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListInvitationTeams: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **invitationId** | **int**| invitation_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Team>**](Team.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsListMembers**
> List<SimpleUser> orgsListMembers(org, filter, role, perPage, page)

List organization members

List all users who are members of an organization. If the authenticated user is also a member of this organization then both concealed and public members will be returned.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var filter = filter_example; // String | Filter members returned in the list. Can be one of:   \\* `2fa_disabled` - Members without [two-factor authentication](https://github.com/blog/1614-two-factor-authentication) enabled. Available for organization owners.   \\* `all` - All members the authenticated user can see.
var role = role_example; // String | Filter members returned by their role. Can be one of:   \\* `all` - All members of the organization, regardless of role.   \\* `admin` - Organization owners.   \\* `member` - Non-owner organization members.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListMembers(org, filter, role, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListMembers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **filter** | **String**| Filter members returned in the list. Can be one of:   \\* &#x60;2fa_disabled&#x60; - Members without [two-factor authentication](https://github.com/blog/1614-two-factor-authentication) enabled. Available for organization owners.   \\* &#x60;all&#x60; - All members the authenticated user can see. | [optional] [default to all]
 **role** | **String**| Filter members returned by their role. Can be one of:   \\* &#x60;all&#x60; - All members of the organization, regardless of role.   \\* &#x60;admin&#x60; - Organization owners.   \\* &#x60;member&#x60; - Non-owner organization members. | [optional] [default to all]
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

# **orgsListMembershipsForAuthenticatedUser**
> List<OrgMembership> orgsListMembershipsForAuthenticatedUser(state, perPage, page)

List organization memberships for the authenticated user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var state = state_example; // String | Indicates the state of the memberships to return. Can be either `active` or `pending`. If not specified, the API returns both active and pending memberships.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListMembershipsForAuthenticatedUser(state, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListMembershipsForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**| Indicates the state of the memberships to return. Can be either &#x60;active&#x60; or &#x60;pending&#x60;. If not specified, the API returns both active and pending memberships. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<OrgMembership>**](OrgMembership.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsListOutsideCollaborators**
> List<SimpleUser> orgsListOutsideCollaborators(org, filter, perPage, page)

List outside collaborators for an organization

List all users who are outside collaborators of an organization.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var filter = filter_example; // String | Filter the list of outside collaborators. Can be one of:   \\* `2fa_disabled`: Outside collaborators without [two-factor authentication](https://github.com/blog/1614-two-factor-authentication) enabled.   \\* `all`: All outside collaborators.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListOutsideCollaborators(org, filter, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListOutsideCollaborators: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **filter** | **String**| Filter the list of outside collaborators. Can be one of:   \\* &#x60;2fa_disabled&#x60;: Outside collaborators without [two-factor authentication](https://github.com/blog/1614-two-factor-authentication) enabled.   \\* &#x60;all&#x60;: All outside collaborators. | [optional] [default to all]
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

# **orgsListPendingInvitations**
> List<OrganizationInvitation> orgsListPendingInvitations(org, perPage, page)

List pending organization invitations

The return hash contains a `role` field which refers to the Organization Invitation role and will be one of the following values: `direct_member`, `admin`, `billing_manager`, `hiring_manager`, or `reinstate`. If the invitee is not a GitHub member, the `login` field in the return hash will be `null`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListPendingInvitations(org, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListPendingInvitations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<OrganizationInvitation>**](OrganizationInvitation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsListPublicMembers**
> List<SimpleUser> orgsListPublicMembers(org, perPage, page)

List public organization members

Members of an organization can choose to have their membership publicized or not.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListPublicMembers(org, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListPublicMembers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
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

# **orgsListSamlSsoAuthorizations**
> List<CredentialAuthorization> orgsListSamlSsoAuthorizations(org)

List SAML SSO authorizations for an organization

Listing and deleting credential authorizations is available to organizations with GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products).  An authenticated organization owner with the `read:org` scope can list all credential authorizations for an organization that uses SAML single sign-on (SSO). The credentials are either personal access tokens or SSH keys that organization members have authorized for the organization. For more information, see [About authentication with SAML single sign-on](https://help.github.com/en/articles/about-authentication-with-saml-single-sign-on).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 

try {
    var result = api_instance.orgsListSamlSsoAuthorizations(org);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListSamlSsoAuthorizations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**List<CredentialAuthorization>**](CredentialAuthorization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsListWebhooks**
> List<OrgHook> orgsListWebhooks(org, perPage, page)

List organization webhooks

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.orgsListWebhooks(org, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsListWebhooks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<OrgHook>**](OrgHook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsPingWebhook**
> orgsPingWebhook(org, hookId)

Ping an organization webhook

This will trigger a [ping event](https://developer.github.com/webhooks/#ping-event) to be sent to the hook.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var hookId = 56; // int | 

try {
    api_instance.orgsPingWebhook(org, hookId);
} catch (e) {
    print("Exception when calling OrgsApi->orgsPingWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **hookId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsRemoveMember**
> orgsRemoveMember(org, username)

Remove an organization member

Removing a user from this list will remove them from all teams and they will no longer have any access to the organization's repositories.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsRemoveMember(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsRemoveMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsRemoveMembershipForUser**
> orgsRemoveMembershipForUser(org, username)

Remove organization membership for a user

In order to remove a user's membership with an organization, the authenticated user must be an organization owner.  If the specified user is an active member of the organization, this will remove them from the organization. If the specified user has been invited to the organization, this will cancel their invitation. The specified user will receive an email notification in both cases.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsRemoveMembershipForUser(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsRemoveMembershipForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsRemoveOutsideCollaborator**
> orgsRemoveOutsideCollaborator(org, username)

Remove outside collaborator from an organization

Removing a user from this list will remove them from all the organization's repositories.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsRemoveOutsideCollaborator(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsRemoveOutsideCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsRemovePublicMembershipForAuthenticatedUser**
> orgsRemovePublicMembershipForAuthenticatedUser(org, username)

Remove public organization membership for the authenticated user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsRemovePublicMembershipForAuthenticatedUser(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsRemovePublicMembershipForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsRemoveSamlSsoAuthorization**
> orgsRemoveSamlSsoAuthorization(org, credentialId)

Remove a SAML SSO authorization for an organization

Listing and deleting credential authorizations is available to organizations with GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products).  An authenticated organization owner with the `admin:org` scope can remove a credential authorization for an organization that uses SAML SSO. Once you remove someone's credential authorization, they will need to create a new personal access token or SSH key and authorize it for the organization they want to access.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var credentialId = 56; // int | 

try {
    api_instance.orgsRemoveSamlSsoAuthorization(org, credentialId);
} catch (e) {
    print("Exception when calling OrgsApi->orgsRemoveSamlSsoAuthorization: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **credentialId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsSetMembershipForUser**
> OrgMembership orgsSetMembershipForUser(org, username, body)

Set organization membership for a user

Only authenticated organization owners can add a member to the organization or update the member's role.  *   If the authenticated user is _adding_ a member to the organization, the invited user will receive an email inviting them to the organization. The user's [membership status](https://developer.github.com/v3/orgs/members/#get-organization-membership-for-a-user) will be `pending` until they accept the invitation.      *   Authenticated users can _update_ a user's membership by passing the `role` parameter. If the authenticated user changes a member's role to `admin`, the affected user will receive an email notifying them that they've been made an organization owner. If the authenticated user changes an owner's role to `member`, no email will be sent.  **Rate limits**  To prevent abuse, the authenticated user is limited to 50 organization invitations per 24 hour period. If the organization is more than one month old or on a paid plan, the limit is 500 invitations per 24 hour period.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 
var body = new Body38(); // Body38 | 

try {
    var result = api_instance.orgsSetMembershipForUser(org, username, body);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsSetMembershipForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 
 **body** | [**Body38**](Body38.md)|  | [optional] 

### Return type

[**OrgMembership**](OrgMembership.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsSetPublicMembershipForAuthenticatedUser**
> orgsSetPublicMembershipForAuthenticatedUser(org, username)

Set public organization membership for the authenticated user

The user can publicize their own membership. (A user cannot publicize the membership for another user.)  Note that you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsSetPublicMembershipForAuthenticatedUser(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsSetPublicMembershipForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsUnblockUser**
> orgsUnblockUser(org, username)

Unblock a user from an organization

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var username = username_example; // String | 

try {
    api_instance.orgsUnblockUser(org, username);
} catch (e) {
    print("Exception when calling OrgsApi->orgsUnblockUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsUpdate**
> OrganizationFull orgsUpdate(org, body)

Update an organization

**Parameter Deprecation Notice:** GitHub will replace and discontinue `members_allowed_repository_creation_type` in favor of more granular permissions. The new input parameters are `members_can_create_public_repositories`, `members_can_create_private_repositories` for all organizations and `members_can_create_internal_repositories` for organizations associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+. For more information, see the [blog post](https://developer.github.com/changes/2019-12-03-internal-visibility-changes).  Enables an authenticated organization owner with the `admin:org` scope to update the organization's profile and member privileges.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var body = new Body24(); // Body24 | 

try {
    var result = api_instance.orgsUpdate(org, body);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body24**](Body24.md)|  | [optional] 

### Return type

[**OrganizationFull**](OrganizationFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsUpdateMembershipForAuthenticatedUser**
> OrgMembership orgsUpdateMembershipForAuthenticatedUser(org, body)

Update an organization membership for the authenticated user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var body = new Body169(); // Body169 | 

try {
    var result = api_instance.orgsUpdateMembershipForAuthenticatedUser(org, body);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsUpdateMembershipForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body169**](Body169.md)|  | [optional] 

### Return type

[**OrgMembership**](OrgMembership.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsUpdateWebhook**
> OrgHook orgsUpdateWebhook(org, hookId, body)

Update an organization webhook

Updates a webhook configured in an organization. When you update a webhook, the `secret` will be overwritten. If you previously had a `secret` set, you must provide the same `secret` or set a new `secret` or the secret will be removed. If you are only updating individual webhook `config` properties, use \"[Update a webhook configuration for an organization](/rest/reference/orgs#update-a-webhook-configuration-for-an-organization).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var hookId = 56; // int | 
var body = new Body34(); // Body34 | 

try {
    var result = api_instance.orgsUpdateWebhook(org, hookId, body);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsUpdateWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **hookId** | **int**|  | 
 **body** | [**Body34**](Body34.md)|  | [optional] 

### Return type

[**OrgHook**](OrgHook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgsUpdateWebhookConfigForOrg**
> WebhookConfig orgsUpdateWebhookConfigForOrg(org, hookId, body)

Update a webhook configuration for an organization

Updates the webhook configuration for an organization. To update more information about the webhook, including the `active` state and `events`, use \"[Update an organization webhook ](/rest/reference/orgs#update-an-organization-webhook).\"  Access tokens must have the `admin:org_hook` scope, and GitHub Apps must have the `organization_hooks:write` permission.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new OrgsApi();
var org = org_example; // String | 
var hookId = 56; // int | 
var body = new Body35(); // Body35 | 

try {
    var result = api_instance.orgsUpdateWebhookConfigForOrg(org, hookId, body);
    print(result);
} catch (e) {
    print("Exception when calling OrgsApi->orgsUpdateWebhookConfigForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **hookId** | **int**|  | 
 **body** | [**Body35**](Body35.md)|  | [optional] 

### Return type

[**WebhookConfig**](WebhookConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

