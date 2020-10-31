# swagger.api.ScimApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scimDeleteUserFromOrg**](ScimApi.md#scimDeleteUserFromOrg) | **DELETE** /scim/v2/organizations/{org}/Users/{scim_user_id} | Delete a SCIM user from an organization
[**scimGetProvisioningInformationForUser**](ScimApi.md#scimGetProvisioningInformationForUser) | **GET** /scim/v2/organizations/{org}/Users/{scim_user_id} | Get SCIM provisioning information for a user
[**scimListProvisionedIdentities**](ScimApi.md#scimListProvisionedIdentities) | **GET** /scim/v2/organizations/{org}/Users | List SCIM provisioned identities
[**scimProvisionAndInviteUser**](ScimApi.md#scimProvisionAndInviteUser) | **POST** /scim/v2/organizations/{org}/Users | Provision and invite a SCIM user
[**scimSetInformationForProvisionedUser**](ScimApi.md#scimSetInformationForProvisionedUser) | **PUT** /scim/v2/organizations/{org}/Users/{scim_user_id} | Update a provisioned organization membership
[**scimUpdateAttributeForUser**](ScimApi.md#scimUpdateAttributeForUser) | **PATCH** /scim/v2/organizations/{org}/Users/{scim_user_id} | Update an attribute for a SCIM user

# **scimDeleteUserFromOrg**
> scimDeleteUserFromOrg(org, scimUserId)

Delete a SCIM user from an organization

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ScimApi();
var org = org_example; // String | 
var scimUserId = scimUserId_example; // String | scim_user_id parameter

try {
    api_instance.scimDeleteUserFromOrg(org, scimUserId);
} catch (e) {
    print("Exception when calling ScimApi->scimDeleteUserFromOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **scimUserId** | **String**| scim_user_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/scim+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scimGetProvisioningInformationForUser**
> ScimUser scimGetProvisioningInformationForUser(org, scimUserId)

Get SCIM provisioning information for a user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ScimApi();
var org = org_example; // String | 
var scimUserId = scimUserId_example; // String | scim_user_id parameter

try {
    var result = api_instance.scimGetProvisioningInformationForUser(org, scimUserId);
    print(result);
} catch (e) {
    print("Exception when calling ScimApi->scimGetProvisioningInformationForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **scimUserId** | **String**| scim_user_id parameter | 

### Return type

[**ScimUser**](ScimUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scimListProvisionedIdentities**
> ScimUserList scimListProvisionedIdentities(org, startIndex, count, filter)

List SCIM provisioned identities

Retrieves a paginated list of all provisioned organization members, including pending invitations. If you provide the `filter` parameter, the resources for all matching provisions members are returned.  When a user with a SAML-provisioned external identity leaves (or is removed from) an organization, the account's metadata is immediately removed. However, the returned list of user accounts might not always match the organization or enterprise member list you see on GitHub. This can happen in certain cases where an external identity associated with an organization will not match an organization member:   - When a user with a SCIM-provisioned external identity is removed from an organization, the account's metadata is preserved to allow the user to re-join the organization in the future.   - When inviting a user to join an organization, you can expect to see their external identity in the results before they accept the invitation, or if the invitation is cancelled (or never accepted).   - When a user is invited over SCIM, an external identity is created that matches with the invitee's email address. However, this identity is only linked to a user account when the user accepts the invitation by going through SAML SSO.  The returned list of external identities can include an entry for a `null` user. These are unlinked SAML identities that are created when a user goes through the following Single Sign-On (SSO) process but does not sign in to their GitHub account after completing SSO:  1. The user is granted access by the IdP and is not a member of the GitHub organization.  1. The user attempts to access the GitHub organization and initiates the SAML SSO process, and is not currently signed in to their GitHub account.  1. After successfully authenticating with the SAML SSO IdP, the `null` external identity entry is created and the user is prompted to sign in to their GitHub account:    - If the user signs in, their GitHub account is linked to this entry.    - If the user does not sign in (or does not create a new account when prompted), they are not added to the GitHub organization, and the external identity `null` entry remains in place.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ScimApi();
var org = org_example; // String | 
var startIndex = 56; // int | Used for pagination: the index of the first result to return.
var count = 56; // int | Used for pagination: the number of results to return.
var filter = filter_example; // String | Filters results using the equals query parameter operator (`eq`). You can filter results that are equal to `id`, `userName`, `emails`, and `external_id`. For example, to search for an identity with the `userName` Octocat, you would use this query:  `?filter=userName%20eq%20\\\"Octocat\\\"`.  To filter results for for the identity with the email `octocat@github.com`, you would use this query:  `?filter=emails%20eq%20\\\"octocat@github.com\\\"`.

try {
    var result = api_instance.scimListProvisionedIdentities(org, startIndex, count, filter);
    print(result);
} catch (e) {
    print("Exception when calling ScimApi->scimListProvisionedIdentities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **startIndex** | **int**| Used for pagination: the index of the first result to return. | [optional] 
 **count** | **int**| Used for pagination: the number of results to return. | [optional] 
 **filter** | **String**| Filters results using the equals query parameter operator (&#x60;eq&#x60;). You can filter results that are equal to &#x60;id&#x60;, &#x60;userName&#x60;, &#x60;emails&#x60;, and &#x60;external_id&#x60;. For example, to search for an identity with the &#x60;userName&#x60; Octocat, you would use this query:  &#x60;?filter&#x3D;userName%20eq%20\\\&quot;Octocat\\\&quot;&#x60;.  To filter results for for the identity with the email &#x60;octocat@github.com&#x60;, you would use this query:  &#x60;?filter&#x3D;emails%20eq%20\\\&quot;octocat@github.com\\\&quot;&#x60;. | [optional] 

### Return type

[**ScimUserList**](ScimUserList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/scim+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scimProvisionAndInviteUser**
> ScimUser scimProvisionAndInviteUser(org, body)

Provision and invite a SCIM user

Provision organization membership for a user, and send an activation email to the email address.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ScimApi();
var org = org_example; // String | 
var body = new Body149(); // Body149 | 

try {
    var result = api_instance.scimProvisionAndInviteUser(org, body);
    print(result);
} catch (e) {
    print("Exception when calling ScimApi->scimProvisionAndInviteUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body149**](Body149.md)|  | [optional] 

### Return type

[**ScimUser**](ScimUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/scim+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scimSetInformationForProvisionedUser**
> ScimUser scimSetInformationForProvisionedUser(org, scimUserId, body)

Update a provisioned organization membership

Replaces an existing provisioned user's information. You must provide all the information required for the user as if you were provisioning them for the first time. Any existing user information that you don't provide will be removed. If you want to only update a specific attribute, use the [Update an attribute for a SCIM user](https://developer.github.com/v3/scim/#update-an-attribute-for-a-scim-user) endpoint instead.  You must at least provide the required values for the user: `userName`, `name`, and `emails`.  **Warning:** Setting `active: false` removes the user from the organization, deletes the external identity, and deletes the associated `{scim_user_id}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ScimApi();
var org = org_example; // String | 
var scimUserId = scimUserId_example; // String | scim_user_id parameter
var body = new Body150(); // Body150 | 

try {
    var result = api_instance.scimSetInformationForProvisionedUser(org, scimUserId, body);
    print(result);
} catch (e) {
    print("Exception when calling ScimApi->scimSetInformationForProvisionedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **scimUserId** | **String**| scim_user_id parameter | 
 **body** | [**Body150**](Body150.md)|  | [optional] 

### Return type

[**ScimUser**](ScimUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/scim+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scimUpdateAttributeForUser**
> ScimUser scimUpdateAttributeForUser(org, scimUserId, body)

Update an attribute for a SCIM user

Allows you to change a provisioned user's individual attributes. To change a user's values, you must provide a specific `Operations` JSON format that contains at least one of the `add`, `remove`, or `replace` operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).  **Note:** Complicated SCIM `path` selectors that include filters are not supported. For example, a `path` selector defined as `\"path\": \"emails[type eq \\\"work\\\"]\"` will not work.  **Warning:** If you set `active:false` using the `replace` operation (as shown in the JSON example below), it removes the user from the organization, deletes the external identity, and deletes the associated `:scim_user_id`.  ``` {   \"Operations\":[{     \"op\":\"replace\",     \"value\":{       \"active\":false     }   }] } ```

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ScimApi();
var org = org_example; // String | 
var scimUserId = scimUserId_example; // String | scim_user_id parameter
var body = new Body151(); // Body151 | 

try {
    var result = api_instance.scimUpdateAttributeForUser(org, scimUserId, body);
    print(result);
} catch (e) {
    print("Exception when calling ScimApi->scimUpdateAttributeForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **scimUserId** | **String**| scim_user_id parameter | 
 **body** | [**Body151**](Body151.md)|  | [optional] 

### Return type

[**ScimUser**](ScimUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/scim+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

