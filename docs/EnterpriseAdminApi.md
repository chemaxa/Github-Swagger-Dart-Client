# swagger.api.EnterpriseAdminApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise**](EnterpriseAdminApi.md#enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise) | **PUT** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations/{org_id} | Add organization access to a self-hosted runner group in an enterprise
[**enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise) | **PUT** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners/{runner_id} | Add a self-hosted runner to a group for an enterprise
[**enterpriseAdminCreateRegistrationTokenForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminCreateRegistrationTokenForEnterprise) | **POST** /enterprises/{enterprise}/actions/runners/registration-token | Create a registration token for an enterprise
[**enterpriseAdminCreateRemoveTokenForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminCreateRemoveTokenForEnterprise) | **POST** /enterprises/{enterprise}/actions/runners/remove-token | Create a remove token for an enterprise
[**enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise) | **POST** /enterprises/{enterprise}/actions/runner-groups | Create a self-hosted runner group for an enterprise
[**enterpriseAdminDeleteScimGroupFromEnterprise**](EnterpriseAdminApi.md#enterpriseAdminDeleteScimGroupFromEnterprise) | **DELETE** /scim/v2/enterprises/{enterprise}/Groups/{scim_group_id} | Delete a SCIM group from an enterprise
[**enterpriseAdminDeleteSelfHostedRunnerFromEnterprise**](EnterpriseAdminApi.md#enterpriseAdminDeleteSelfHostedRunnerFromEnterprise) | **DELETE** /enterprises/{enterprise}/actions/runners/{runner_id} | Delete a self-hosted runner from an enterprise
[**enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise**](EnterpriseAdminApi.md#enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise) | **DELETE** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id} | Delete a self-hosted runner group from an enterprise
[**enterpriseAdminDeleteUserFromEnterprise**](EnterpriseAdminApi.md#enterpriseAdminDeleteUserFromEnterprise) | **DELETE** /scim/v2/enterprises/{enterprise}/Users/{scim_user_id} | Delete a SCIM user from an enterprise
[**enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise**](EnterpriseAdminApi.md#enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise) | **DELETE** /enterprises/{enterprise}/actions/permissions/organizations/{org_id} | Disable a selected organization for GitHub Actions in an enterprise
[**enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise**](EnterpriseAdminApi.md#enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise) | **PUT** /enterprises/{enterprise}/actions/permissions/organizations/{org_id} | Enable a selected organization for GitHub Actions in an enterprise
[**enterpriseAdminGetAllowedActionsEnterprise**](EnterpriseAdminApi.md#enterpriseAdminGetAllowedActionsEnterprise) | **GET** /enterprises/{enterprise}/actions/permissions/selected-actions | Get allowed actions for an enterprise
[**enterpriseAdminGetGithubActionsPermissionsEnterprise**](EnterpriseAdminApi.md#enterpriseAdminGetGithubActionsPermissionsEnterprise) | **GET** /enterprises/{enterprise}/actions/permissions | Get GitHub Actions permissions for an enterprise
[**enterpriseAdminGetProvisioningInformationForEnterpriseGroup**](EnterpriseAdminApi.md#enterpriseAdminGetProvisioningInformationForEnterpriseGroup) | **GET** /scim/v2/enterprises/{enterprise}/Groups/{scim_group_id} | Get SCIM provisioning information for an enterprise group
[**enterpriseAdminGetProvisioningInformationForEnterpriseUser**](EnterpriseAdminApi.md#enterpriseAdminGetProvisioningInformationForEnterpriseUser) | **GET** /scim/v2/enterprises/{enterprise}/Users/{scim_user_id} | Get SCIM provisioning information for an enterprise user
[**enterpriseAdminGetSelfHostedRunnerForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminGetSelfHostedRunnerForEnterprise) | **GET** /enterprises/{enterprise}/actions/runners/{runner_id} | Get a self-hosted runner for an enterprise
[**enterpriseAdminGetSelfHostedRunnerGroupForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminGetSelfHostedRunnerGroupForEnterprise) | **GET** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id} | Get a self-hosted runner group for an enterprise
[**enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise**](EnterpriseAdminApi.md#enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise) | **GET** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations | List organization access to a self-hosted runner group in an enterprise
[**enterpriseAdminListProvisionedGroupsEnterprise**](EnterpriseAdminApi.md#enterpriseAdminListProvisionedGroupsEnterprise) | **GET** /scim/v2/enterprises/{enterprise}/Groups | List provisioned SCIM groups for an enterprise
[**enterpriseAdminListProvisionedIdentitiesEnterprise**](EnterpriseAdminApi.md#enterpriseAdminListProvisionedIdentitiesEnterprise) | **GET** /scim/v2/enterprises/{enterprise}/Users | List SCIM provisioned identities for an enterprise
[**enterpriseAdminListRunnerApplicationsForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminListRunnerApplicationsForEnterprise) | **GET** /enterprises/{enterprise}/actions/runners/downloads | List runner applications for an enterprise
[**enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise**](EnterpriseAdminApi.md#enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise) | **GET** /enterprises/{enterprise}/actions/permissions/organizations | List selected organizations enabled for GitHub Actions in an enterprise
[**enterpriseAdminListSelfHostedRunnerGroupsForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminListSelfHostedRunnerGroupsForEnterprise) | **GET** /enterprises/{enterprise}/actions/runner-groups | List self-hosted runner groups for an enterprise
[**enterpriseAdminListSelfHostedRunnersForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminListSelfHostedRunnersForEnterprise) | **GET** /enterprises/{enterprise}/actions/runners | List self-hosted runners for an enterprise
[**enterpriseAdminListSelfHostedRunnersInGroupForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminListSelfHostedRunnersInGroupForEnterprise) | **GET** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners | List self-hosted runners in a group for an enterprise
[**enterpriseAdminProvisionAndInviteEnterpriseGroup**](EnterpriseAdminApi.md#enterpriseAdminProvisionAndInviteEnterpriseGroup) | **POST** /scim/v2/enterprises/{enterprise}/Groups | Provision a SCIM enterprise group and invite users
[**enterpriseAdminProvisionAndInviteEnterpriseUser**](EnterpriseAdminApi.md#enterpriseAdminProvisionAndInviteEnterpriseUser) | **POST** /scim/v2/enterprises/{enterprise}/Users | Provision and invite a SCIM enterprise user
[**enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise**](EnterpriseAdminApi.md#enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise) | **DELETE** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations/{org_id} | Remove organization access to a self-hosted runner group in an enterprise
[**enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise) | **DELETE** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners/{runner_id} | Remove a self-hosted runner from a group for an enterprise
[**enterpriseAdminSetAllowedActionsEnterprise**](EnterpriseAdminApi.md#enterpriseAdminSetAllowedActionsEnterprise) | **PUT** /enterprises/{enterprise}/actions/permissions/selected-actions | Set allowed actions for an enterprise
[**enterpriseAdminSetGithubActionsPermissionsEnterprise**](EnterpriseAdminApi.md#enterpriseAdminSetGithubActionsPermissionsEnterprise) | **PUT** /enterprises/{enterprise}/actions/permissions | Set GitHub Actions permissions for an enterprise
[**enterpriseAdminSetInformationForProvisionedEnterpriseGroup**](EnterpriseAdminApi.md#enterpriseAdminSetInformationForProvisionedEnterpriseGroup) | **PUT** /scim/v2/enterprises/{enterprise}/Groups/{scim_group_id} | Set SCIM information for a provisioned enterprise group
[**enterpriseAdminSetInformationForProvisionedEnterpriseUser**](EnterpriseAdminApi.md#enterpriseAdminSetInformationForProvisionedEnterpriseUser) | **PUT** /scim/v2/enterprises/{enterprise}/Users/{scim_user_id} | Set SCIM information for a provisioned enterprise user
[**enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise**](EnterpriseAdminApi.md#enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise) | **PUT** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations | Set organization access for a self-hosted runner group in an enterprise
[**enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise**](EnterpriseAdminApi.md#enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise) | **PUT** /enterprises/{enterprise}/actions/permissions/organizations | Set selected organizations enabled for GitHub Actions in an enterprise
[**enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise) | **PUT** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners | Set self-hosted runners in a group for an enterprise
[**enterpriseAdminUpdateAttributeForEnterpriseGroup**](EnterpriseAdminApi.md#enterpriseAdminUpdateAttributeForEnterpriseGroup) | **PATCH** /scim/v2/enterprises/{enterprise}/Groups/{scim_group_id} | Update an attribute for a SCIM enterprise group
[**enterpriseAdminUpdateAttributeForEnterpriseUser**](EnterpriseAdminApi.md#enterpriseAdminUpdateAttributeForEnterpriseUser) | **PATCH** /scim/v2/enterprises/{enterprise}/Users/{scim_user_id} | Update an attribute for a SCIM enterprise user
[**enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise**](EnterpriseAdminApi.md#enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise) | **PATCH** /enterprises/{enterprise}/actions/runner-groups/{runner_group_id} | Update a self-hosted runner group for an enterprise

# **enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise**
> enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise(enterprise, runnerGroupId, orgId)

Add organization access to a self-hosted runner group in an enterprise

Adds an organization to the list of selected organizations that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see \"[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.
var orgId = 56; // int | Unique identifier of an organization.

try {
    api_instance.enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise(enterprise, runnerGroupId, orgId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 
 **orgId** | **int**| Unique identifier of an organization. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise**
> enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise(enterprise, runnerGroupId, runnerId)

Add a self-hosted runner to a group for an enterprise

Adds a self-hosted runner to a runner group configured in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.
var runnerId = 56; // int | Unique identifier of the self-hosted runner.

try {
    api_instance.enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise(enterprise, runnerGroupId, runnerId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 
 **runnerId** | **int**| Unique identifier of the self-hosted runner. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminCreateRegistrationTokenForEnterprise**
> AuthenticationToken enterpriseAdminCreateRegistrationTokenForEnterprise(enterprise)

Create a registration token for an enterprise

Returns a token that you can pass to the `config` script. The token expires after one hour.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.  #### Example using registration token  Configure your self-hosted runner, replacing `TOKEN` with the registration token provided by this endpoint.  ``` ./config.sh --url https://github.com/enterpises/octo-enterprise --token TOKEN ```

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.

try {
    var result = api_instance.enterpriseAdminCreateRegistrationTokenForEnterprise(enterprise);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminCreateRegistrationTokenForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 

### Return type

[**AuthenticationToken**](AuthenticationToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminCreateRemoveTokenForEnterprise**
> AuthenticationToken enterpriseAdminCreateRemoveTokenForEnterprise(enterprise)

Create a remove token for an enterprise

Returns a token that you can pass to the `config` script to remove a self-hosted runner from an enterprise. The token expires after one hour.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.  #### Example using remove token  To remove your self-hosted runner from an enterprise, replace `TOKEN` with the remove token provided by this endpoint.  ``` ./config.sh remove --token TOKEN ```

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.

try {
    var result = api_instance.enterpriseAdminCreateRemoveTokenForEnterprise(enterprise);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminCreateRemoveTokenForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 

### Return type

[**AuthenticationToken**](AuthenticationToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise**
> RunnerGroupsEnterprise enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise(enterprise, body)

Create a self-hosted runner group for an enterprise

Creates a new self-hosted runner group for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var body = new Body13(); // Body13 | 

try {
    var result = api_instance.enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise(enterprise, body);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **body** | [**Body13**](Body13.md)|  | [optional] 

### Return type

[**RunnerGroupsEnterprise**](RunnerGroupsEnterprise.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminDeleteScimGroupFromEnterprise**
> enterpriseAdminDeleteScimGroupFromEnterprise(enterprise, scimGroupId)

Delete a SCIM group from an enterprise

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var scimGroupId = scimGroupId_example; // String | Identifier generated by the GitHub SCIM endpoint.

try {
    api_instance.enterpriseAdminDeleteScimGroupFromEnterprise(enterprise, scimGroupId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminDeleteScimGroupFromEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **scimGroupId** | **String**| Identifier generated by the GitHub SCIM endpoint. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminDeleteSelfHostedRunnerFromEnterprise**
> enterpriseAdminDeleteSelfHostedRunnerFromEnterprise(enterprise, runnerId)

Delete a self-hosted runner from an enterprise

Forces the removal of a self-hosted runner from an enterprise. You can use this endpoint to completely remove the runner when the machine you were using no longer exists.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerId = 56; // int | Unique identifier of the self-hosted runner.

try {
    api_instance.enterpriseAdminDeleteSelfHostedRunnerFromEnterprise(enterprise, runnerId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminDeleteSelfHostedRunnerFromEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerId** | **int**| Unique identifier of the self-hosted runner. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise**
> enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise(enterprise, runnerGroupId)

Delete a self-hosted runner group from an enterprise

Deletes a self-hosted runner group for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.

try {
    api_instance.enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise(enterprise, runnerGroupId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminDeleteUserFromEnterprise**
> enterpriseAdminDeleteUserFromEnterprise(enterprise, scimUserId)

Delete a SCIM user from an enterprise

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var scimUserId = scimUserId_example; // String | scim_user_id parameter

try {
    api_instance.enterpriseAdminDeleteUserFromEnterprise(enterprise, scimUserId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminDeleteUserFromEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **scimUserId** | **String**| scim_user_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise**
> enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise(enterprise, orgId)

Disable a selected organization for GitHub Actions in an enterprise

Removes an organization from the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var orgId = 56; // int | Unique identifier of an organization.

try {
    api_instance.enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise(enterprise, orgId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **orgId** | **int**| Unique identifier of an organization. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise**
> enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise(enterprise, orgId)

Enable a selected organization for GitHub Actions in an enterprise

Adds an organization to the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var orgId = 56; // int | Unique identifier of an organization.

try {
    api_instance.enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise(enterprise, orgId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **orgId** | **int**| Unique identifier of an organization. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminGetAllowedActionsEnterprise**
> SelectedActions enterpriseAdminGetAllowedActionsEnterprise(enterprise)

Get allowed actions for an enterprise

Gets the selected actions that are allowed in an enterprise. To use this endpoint, the enterprise permission policy for `allowed_actions` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.

try {
    var result = api_instance.enterpriseAdminGetAllowedActionsEnterprise(enterprise);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminGetAllowedActionsEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 

### Return type

[**SelectedActions**](SelectedActions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminGetGithubActionsPermissionsEnterprise**
> ActionsEnterprisePermissions enterpriseAdminGetGithubActionsPermissionsEnterprise(enterprise)

Get GitHub Actions permissions for an enterprise

Gets the GitHub Actions permissions policy for organizations and allowed actions in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.

try {
    var result = api_instance.enterpriseAdminGetGithubActionsPermissionsEnterprise(enterprise);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminGetGithubActionsPermissionsEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 

### Return type

[**ActionsEnterprisePermissions**](ActionsEnterprisePermissions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminGetProvisioningInformationForEnterpriseGroup**
> ScimEnterpriseGroup enterpriseAdminGetProvisioningInformationForEnterpriseGroup(enterprise, scimGroupId)

Get SCIM provisioning information for an enterprise group

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var scimGroupId = scimGroupId_example; // String | Identifier generated by the GitHub SCIM endpoint.

try {
    var result = api_instance.enterpriseAdminGetProvisioningInformationForEnterpriseGroup(enterprise, scimGroupId);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminGetProvisioningInformationForEnterpriseGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **scimGroupId** | **String**| Identifier generated by the GitHub SCIM endpoint. | 

### Return type

[**ScimEnterpriseGroup**](ScimEnterpriseGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminGetProvisioningInformationForEnterpriseUser**
> ScimEnterpriseUser enterpriseAdminGetProvisioningInformationForEnterpriseUser(enterprise, scimUserId)

Get SCIM provisioning information for an enterprise user

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var scimUserId = scimUserId_example; // String | scim_user_id parameter

try {
    var result = api_instance.enterpriseAdminGetProvisioningInformationForEnterpriseUser(enterprise, scimUserId);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminGetProvisioningInformationForEnterpriseUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **scimUserId** | **String**| scim_user_id parameter | 

### Return type

[**ScimEnterpriseUser**](ScimEnterpriseUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminGetSelfHostedRunnerForEnterprise**
> Runner enterpriseAdminGetSelfHostedRunnerForEnterprise(enterprise, runnerId)

Get a self-hosted runner for an enterprise

Gets a specific self-hosted runner configured in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerId = 56; // int | Unique identifier of the self-hosted runner.

try {
    var result = api_instance.enterpriseAdminGetSelfHostedRunnerForEnterprise(enterprise, runnerId);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminGetSelfHostedRunnerForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerId** | **int**| Unique identifier of the self-hosted runner. | 

### Return type

[**Runner**](Runner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminGetSelfHostedRunnerGroupForEnterprise**
> RunnerGroupsEnterprise enterpriseAdminGetSelfHostedRunnerGroupForEnterprise(enterprise, runnerGroupId)

Get a self-hosted runner group for an enterprise

Gets a specific self-hosted runner group for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.

try {
    var result = api_instance.enterpriseAdminGetSelfHostedRunnerGroupForEnterprise(enterprise, runnerGroupId);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminGetSelfHostedRunnerGroupForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 

### Return type

[**RunnerGroupsEnterprise**](RunnerGroupsEnterprise.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise**
> InlineResponse2002 enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise(enterprise, runnerGroupId, perPage, page)

List organization access to a self-hosted runner group in an enterprise

Lists the organizations with access to a self-hosted runner group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise(enterprise, runnerGroupId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminListProvisionedGroupsEnterprise**
> ScimGroupListEnterprise enterpriseAdminListProvisionedGroupsEnterprise(enterprise, startIndex, count)

List provisioned SCIM groups for an enterprise

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var startIndex = 56; // int | Used for pagination: the index of the first result to return.
var count = 56; // int | Used for pagination: the number of results to return.

try {
    var result = api_instance.enterpriseAdminListProvisionedGroupsEnterprise(enterprise, startIndex, count);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminListProvisionedGroupsEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **startIndex** | **int**| Used for pagination: the index of the first result to return. | [optional] 
 **count** | **int**| Used for pagination: the number of results to return. | [optional] 

### Return type

[**ScimGroupListEnterprise**](ScimGroupListEnterprise.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminListProvisionedIdentitiesEnterprise**
> ScimUserListEnterprise enterpriseAdminListProvisionedIdentitiesEnterprise(enterprise, startIndex, count)

List SCIM provisioned identities for an enterprise

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Retrieves a paginated list of all provisioned enterprise members, including pending invitations.  When a user with a SAML-provisioned external identity leaves (or is removed from) an enterprise, the account's metadata is immediately removed. However, the returned list of user accounts might not always match the organization or enterprise member list you see on GitHub. This can happen in certain cases where an external identity associated with an organization will not match an organization member:   - When a user with a SCIM-provisioned external identity is removed from an enterprise, the account's metadata is preserved to allow the user to re-join the organization in the future.   - When inviting a user to join an organization, you can expect to see their external identity in the results before they accept the invitation, or if the invitation is cancelled (or never accepted).   - When a user is invited over SCIM, an external identity is created that matches with the invitee's email address. However, this identity is only linked to a user account when the user accepts the invitation by going through SAML SSO.  The returned list of external identities can include an entry for a `null` user. These are unlinked SAML identities that are created when a user goes through the following Single Sign-On (SSO) process but does not sign in to their GitHub account after completing SSO:  1. The user is granted access by the IdP and is not a member of the GitHub enterprise.  1. The user attempts to access the GitHub enterprise and initiates the SAML SSO process, and is not currently signed in to their GitHub account.  1. After successfully authenticating with the SAML SSO IdP, the `null` external identity entry is created and the user is prompted to sign in to their GitHub account:    - If the user signs in, their GitHub account is linked to this entry.    - If the user does not sign in (or does not create a new account when prompted), they are not added to the GitHub enterprise, and the external identity `null` entry remains in place.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var startIndex = 56; // int | Used for pagination: the index of the first result to return.
var count = 56; // int | Used for pagination: the number of results to return.

try {
    var result = api_instance.enterpriseAdminListProvisionedIdentitiesEnterprise(enterprise, startIndex, count);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminListProvisionedIdentitiesEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **startIndex** | **int**| Used for pagination: the index of the first result to return. | [optional] 
 **count** | **int**| Used for pagination: the number of results to return. | [optional] 

### Return type

[**ScimUserListEnterprise**](ScimUserListEnterprise.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminListRunnerApplicationsForEnterprise**
> List<RunnerApplication> enterpriseAdminListRunnerApplicationsForEnterprise(enterprise)

List runner applications for an enterprise

Lists binaries for the runner application that you can download and run.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.

try {
    var result = api_instance.enterpriseAdminListRunnerApplicationsForEnterprise(enterprise);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminListRunnerApplicationsForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 

### Return type

[**List<RunnerApplication>**](RunnerApplication.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise**
> InlineResponse2002 enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise(enterprise, perPage, page)

List selected organizations enabled for GitHub Actions in an enterprise

Lists the organizations that are selected to have GitHub Actions enabled in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise(enterprise, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminListSelfHostedRunnerGroupsForEnterprise**
> InlineResponse2003 enterpriseAdminListSelfHostedRunnerGroupsForEnterprise(enterprise, perPage, page)

List self-hosted runner groups for an enterprise

Lists all self-hosted runner groups for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.enterpriseAdminListSelfHostedRunnerGroupsForEnterprise(enterprise, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminListSelfHostedRunnerGroupsForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminListSelfHostedRunnersForEnterprise**
> InlineResponse2004 enterpriseAdminListSelfHostedRunnersForEnterprise(enterprise, perPage, page)

List self-hosted runners for an enterprise

Lists all self-hosted runners configured for an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.enterpriseAdminListSelfHostedRunnersForEnterprise(enterprise, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminListSelfHostedRunnersForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminListSelfHostedRunnersInGroupForEnterprise**
> InlineResponse2004 enterpriseAdminListSelfHostedRunnersInGroupForEnterprise(enterprise, runnerGroupId, perPage, page)

List self-hosted runners in a group for an enterprise

Lists the self-hosted runners that are in a specific enterprise group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.enterpriseAdminListSelfHostedRunnersInGroupForEnterprise(enterprise, runnerGroupId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminListSelfHostedRunnersInGroupForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminProvisionAndInviteEnterpriseGroup**
> ScimEnterpriseGroup enterpriseAdminProvisionAndInviteEnterpriseGroup(enterprise, body)

Provision a SCIM enterprise group and invite users

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Provision an enterprise group, and invite users to the group. This sends invitation emails to the email address of the invited users to join the GitHub organization that the SCIM group corresponds to.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var body = new Body143(); // Body143 | 

try {
    var result = api_instance.enterpriseAdminProvisionAndInviteEnterpriseGroup(enterprise, body);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminProvisionAndInviteEnterpriseGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **body** | [**Body143**](Body143.md)|  | [optional] 

### Return type

[**ScimEnterpriseGroup**](ScimEnterpriseGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminProvisionAndInviteEnterpriseUser**
> ScimEnterpriseUser enterpriseAdminProvisionAndInviteEnterpriseUser(enterprise, body)

Provision and invite a SCIM enterprise user

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Provision enterprise membership for a user, and send organization invitation emails to the email address.  You can optionally include the groups a user will be invited to join. If you do not provide a list of `groups`, the user is provisioned for the enterprise, but no organization invitation emails will be sent.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var body = new Body146(); // Body146 | 

try {
    var result = api_instance.enterpriseAdminProvisionAndInviteEnterpriseUser(enterprise, body);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminProvisionAndInviteEnterpriseUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **body** | [**Body146**](Body146.md)|  | [optional] 

### Return type

[**ScimEnterpriseUser**](ScimEnterpriseUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise**
> enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise(enterprise, runnerGroupId, orgId)

Remove organization access to a self-hosted runner group in an enterprise

Removes an organization from the list of selected organizations that can access a self-hosted runner group. The runner group must have `visibility` set to `selected`. For more information, see \"[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.
var orgId = 56; // int | Unique identifier of an organization.

try {
    api_instance.enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise(enterprise, runnerGroupId, orgId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 
 **orgId** | **int**| Unique identifier of an organization. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise**
> enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise(enterprise, runnerGroupId, runnerId)

Remove a self-hosted runner from a group for an enterprise

Removes a self-hosted runner from a group configured in an enterprise. The runner is then returned to the default group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.
var runnerId = 56; // int | Unique identifier of the self-hosted runner.

try {
    api_instance.enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise(enterprise, runnerGroupId, runnerId);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 
 **runnerId** | **int**| Unique identifier of the self-hosted runner. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminSetAllowedActionsEnterprise**
> enterpriseAdminSetAllowedActionsEnterprise(enterprise, body)

Set allowed actions for an enterprise

Sets the actions that are allowed in an enterprise. To use this endpoint, the enterprise permission policy for `allowed_actions` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var body = new SelectedActions(); // SelectedActions | 

try {
    api_instance.enterpriseAdminSetAllowedActionsEnterprise(enterprise, body);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminSetAllowedActionsEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **body** | [**SelectedActions**](SelectedActions.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminSetGithubActionsPermissionsEnterprise**
> enterpriseAdminSetGithubActionsPermissionsEnterprise(enterprise, body)

Set GitHub Actions permissions for an enterprise

Sets the GitHub Actions permissions policy for organizations and allowed actions in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var body = new Body11(); // Body11 | 

try {
    api_instance.enterpriseAdminSetGithubActionsPermissionsEnterprise(enterprise, body);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminSetGithubActionsPermissionsEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **body** | [**Body11**](Body11.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminSetInformationForProvisionedEnterpriseGroup**
> ScimEnterpriseGroup enterpriseAdminSetInformationForProvisionedEnterpriseGroup(enterprise, scimGroupId, body)

Set SCIM information for a provisioned enterprise group

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Replaces an existing provisioned group’s information. You must provide all the information required for the group as if you were provisioning it for the first time. Any existing group information that you don't provide will be removed, including group membership. If you want to only update a specific attribute, use the [Update an attribute for a SCIM enterprise group](#update-an-attribute-for-a-scim-enterprise-group) endpoint instead.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var scimGroupId = scimGroupId_example; // String | Identifier generated by the GitHub SCIM endpoint.
var body = new Body144(); // Body144 | 

try {
    var result = api_instance.enterpriseAdminSetInformationForProvisionedEnterpriseGroup(enterprise, scimGroupId, body);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminSetInformationForProvisionedEnterpriseGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **scimGroupId** | **String**| Identifier generated by the GitHub SCIM endpoint. | 
 **body** | [**Body144**](Body144.md)|  | [optional] 

### Return type

[**ScimEnterpriseGroup**](ScimEnterpriseGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminSetInformationForProvisionedEnterpriseUser**
> ScimEnterpriseUser enterpriseAdminSetInformationForProvisionedEnterpriseUser(enterprise, scimUserId, body)

Set SCIM information for a provisioned enterprise user

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Replaces an existing provisioned user's information. You must provide all the information required for the user as if you were provisioning them for the first time. Any existing user information that you don't provide will be removed. If you want to only update a specific attribute, use the [Update an attribute for a SCIM user](#update-an-attribute-for-an-enterprise-scim-user) endpoint instead.  You must at least provide the required values for the user: `userName`, `name`, and `emails`.  **Warning:** Setting `active: false` removes the user from the enterprise, deletes the external identity, and deletes the associated `{scim_user_id}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var scimUserId = scimUserId_example; // String | scim_user_id parameter
var body = new Body147(); // Body147 | 

try {
    var result = api_instance.enterpriseAdminSetInformationForProvisionedEnterpriseUser(enterprise, scimUserId, body);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminSetInformationForProvisionedEnterpriseUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **scimUserId** | **String**| scim_user_id parameter | 
 **body** | [**Body147**](Body147.md)|  | [optional] 

### Return type

[**ScimEnterpriseUser**](ScimEnterpriseUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise**
> enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise(enterprise, runnerGroupId, body)

Set organization access for a self-hosted runner group in an enterprise

Replaces the list of organizations that have access to a self-hosted runner configured in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.
var body = new Body15(); // Body15 | 

try {
    api_instance.enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise(enterprise, runnerGroupId, body);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 
 **body** | [**Body15**](Body15.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise**
> enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise(enterprise, body)

Set selected organizations enabled for GitHub Actions in an enterprise

Replaces the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see \"[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\"  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var body = new Body12(); // Body12 | 

try {
    api_instance.enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise(enterprise, body);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **body** | [**Body12**](Body12.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise**
> enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise(enterprise, runnerGroupId, body)

Set self-hosted runners in a group for an enterprise

Replaces the list of self-hosted runners that that are part of an enterprise runner group.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.
var body = new Body16(); // Body16 | 

try {
    api_instance.enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise(enterprise, runnerGroupId, body);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 
 **body** | [**Body16**](Body16.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminUpdateAttributeForEnterpriseGroup**
> ScimEnterpriseGroup enterpriseAdminUpdateAttributeForEnterpriseGroup(enterprise, scimGroupId, body)

Update an attribute for a SCIM enterprise group

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Allows you to change a provisioned group’s individual attributes. To change a group’s values, you must provide a specific Operations JSON format that contains at least one of the add, remove, or replace operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var scimGroupId = scimGroupId_example; // String | Identifier generated by the GitHub SCIM endpoint.
var body = new Body145(); // Body145 | 

try {
    var result = api_instance.enterpriseAdminUpdateAttributeForEnterpriseGroup(enterprise, scimGroupId, body);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminUpdateAttributeForEnterpriseGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **scimGroupId** | **String**| Identifier generated by the GitHub SCIM endpoint. | 
 **body** | [**Body145**](Body145.md)|  | [optional] 

### Return type

[**ScimEnterpriseGroup**](ScimEnterpriseGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminUpdateAttributeForEnterpriseUser**
> ScimEnterpriseUser enterpriseAdminUpdateAttributeForEnterpriseUser(enterprise, scimUserId, body)

Update an attribute for a SCIM enterprise user

**Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Allows you to change a provisioned user's individual attributes. To change a user's values, you must provide a specific `Operations` JSON format that contains at least one of the `add`, `remove`, or `replace` operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).  **Note:** Complicated SCIM `path` selectors that include filters are not supported. For example, a `path` selector defined as `\"path\": \"emails[type eq \\\"work\\\"]\"` will not work.  **Warning:** If you set `active:false` using the `replace` operation (as shown in the JSON example below), it removes the user from the enterprise, deletes the external identity, and deletes the associated `:scim_user_id`.  ``` {   \"Operations\":[{     \"op\":\"replace\",     \"value\":{       \"active\":false     }   }] } ```

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var scimUserId = scimUserId_example; // String | scim_user_id parameter
var body = new Body148(); // Body148 | 

try {
    var result = api_instance.enterpriseAdminUpdateAttributeForEnterpriseUser(enterprise, scimUserId, body);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminUpdateAttributeForEnterpriseUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **scimUserId** | **String**| scim_user_id parameter | 
 **body** | [**Body148**](Body148.md)|  | [optional] 

### Return type

[**ScimEnterpriseUser**](ScimEnterpriseUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise**
> RunnerGroupsEnterprise enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise(enterprise, runnerGroupId, body)

Update a self-hosted runner group for an enterprise

Updates the `name` and `visibility` of a self-hosted runner group in an enterprise.  You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EnterpriseAdminApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.
var runnerGroupId = 56; // int | Unique identifier of the self-hosted runner group.
var body = new Body14(); // Body14 | 

try {
    var result = api_instance.enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise(enterprise, runnerGroupId, body);
    print(result);
} catch (e) {
    print("Exception when calling EnterpriseAdminApi->enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 
 **runnerGroupId** | **int**| Unique identifier of the self-hosted runner group. | 
 **body** | [**Body14**](Body14.md)|  | [optional] 

### Return type

[**RunnerGroupsEnterprise**](RunnerGroupsEnterprise.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

