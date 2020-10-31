# swagger.api.BillingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**billingGetGithubActionsBillingGhe**](BillingApi.md#billingGetGithubActionsBillingGhe) | **GET** /enterprises/{enterprise}/settings/billing/actions | Get GitHub Actions billing for an enterprise
[**billingGetGithubActionsBillingOrg**](BillingApi.md#billingGetGithubActionsBillingOrg) | **GET** /orgs/{org}/settings/billing/actions | Get GitHub Actions billing for an organization
[**billingGetGithubActionsBillingUser**](BillingApi.md#billingGetGithubActionsBillingUser) | **GET** /users/{username}/settings/billing/actions | Get GitHub Actions billing for a user
[**billingGetGithubPackagesBillingGhe**](BillingApi.md#billingGetGithubPackagesBillingGhe) | **GET** /enterprises/{enterprise}/settings/billing/packages | Get GitHub Packages billing for an enterprise
[**billingGetGithubPackagesBillingOrg**](BillingApi.md#billingGetGithubPackagesBillingOrg) | **GET** /orgs/{org}/settings/billing/packages | Get GitHub Packages billing for an organization
[**billingGetGithubPackagesBillingUser**](BillingApi.md#billingGetGithubPackagesBillingUser) | **GET** /users/{username}/settings/billing/packages | Get GitHub Packages billing for a user
[**billingGetSharedStorageBillingGhe**](BillingApi.md#billingGetSharedStorageBillingGhe) | **GET** /enterprises/{enterprise}/settings/billing/shared-storage | Get shared storage billing for an enterprise
[**billingGetSharedStorageBillingOrg**](BillingApi.md#billingGetSharedStorageBillingOrg) | **GET** /orgs/{org}/settings/billing/shared-storage | Get shared storage billing for an organization
[**billingGetSharedStorageBillingUser**](BillingApi.md#billingGetSharedStorageBillingUser) | **GET** /users/{username}/settings/billing/shared-storage | Get shared storage billing for a user

# **billingGetGithubActionsBillingGhe**
> ActionsBillingUsage billingGetGithubActionsBillingGhe(enterprise)

Get GitHub Actions billing for an enterprise

Gets the summary of the free and paid GitHub Actions minutes used.  Paid minutes only apply to workflows in private repositories that use GitHub-hosted runners. Minutes used is listed for each GitHub-hosted runner operating system. Any job re-runs are also included in the usage. The usage does not include the multiplier for macOS and Windows runners and is not rounded up to the nearest whole minute. For more information, see \"[Managing billing for GitHub Actions](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-actions)\".  The authenticated user must be an enterprise admin.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillingApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.

try {
    var result = api_instance.billingGetGithubActionsBillingGhe(enterprise);
    print(result);
} catch (e) {
    print("Exception when calling BillingApi->billingGetGithubActionsBillingGhe: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 

### Return type

[**ActionsBillingUsage**](ActionsBillingUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetGithubActionsBillingOrg**
> ActionsBillingUsage billingGetGithubActionsBillingOrg(org)

Get GitHub Actions billing for an organization

Gets the summary of the free and paid GitHub Actions minutes used.  Paid minutes only apply to workflows in private repositories that use GitHub-hosted runners. Minutes used is listed for each GitHub-hosted runner operating system. Any job re-runs are also included in the usage. The usage does not include the multiplier for macOS and Windows runners and is not rounded up to the nearest whole minute. For more information, see \"[Managing billing for GitHub Actions](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-actions)\".  Access tokens must have the `read:org` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillingApi();
var org = org_example; // String | 

try {
    var result = api_instance.billingGetGithubActionsBillingOrg(org);
    print(result);
} catch (e) {
    print("Exception when calling BillingApi->billingGetGithubActionsBillingOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**ActionsBillingUsage**](ActionsBillingUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetGithubActionsBillingUser**
> ActionsBillingUsage billingGetGithubActionsBillingUser(username)

Get GitHub Actions billing for a user

Gets the summary of the free and paid GitHub Actions minutes used.  Paid minutes only apply to workflows in private repositories that use GitHub-hosted runners. Minutes used is listed for each GitHub-hosted runner operating system. Any job re-runs are also included in the usage. The usage does not include the multiplier for macOS and Windows runners and is not rounded up to the nearest whole minute. For more information, see \"[Managing billing for GitHub Actions](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-actions)\".  Access tokens must have the `user` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillingApi();
var username = username_example; // String | 

try {
    var result = api_instance.billingGetGithubActionsBillingUser(username);
    print(result);
} catch (e) {
    print("Exception when calling BillingApi->billingGetGithubActionsBillingUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

[**ActionsBillingUsage**](ActionsBillingUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetGithubPackagesBillingGhe**
> PackagesBillingUsage billingGetGithubPackagesBillingGhe(enterprise)

Get GitHub Packages billing for an enterprise

Gets the free and paid storage used for GitHub Packages in gigabytes.  Paid minutes only apply to packages stored for private repositories. For more information, see \"[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\"  The authenticated user must be an enterprise admin.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillingApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.

try {
    var result = api_instance.billingGetGithubPackagesBillingGhe(enterprise);
    print(result);
} catch (e) {
    print("Exception when calling BillingApi->billingGetGithubPackagesBillingGhe: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 

### Return type

[**PackagesBillingUsage**](PackagesBillingUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetGithubPackagesBillingOrg**
> PackagesBillingUsage billingGetGithubPackagesBillingOrg(org)

Get GitHub Packages billing for an organization

Gets the free and paid storage usued for GitHub Packages in gigabytes.  Paid minutes only apply to packages stored for private repositories. For more information, see \"[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\"  Access tokens must have the `read:org` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillingApi();
var org = org_example; // String | 

try {
    var result = api_instance.billingGetGithubPackagesBillingOrg(org);
    print(result);
} catch (e) {
    print("Exception when calling BillingApi->billingGetGithubPackagesBillingOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**PackagesBillingUsage**](PackagesBillingUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetGithubPackagesBillingUser**
> PackagesBillingUsage billingGetGithubPackagesBillingUser(username)

Get GitHub Packages billing for a user

Gets the free and paid storage used for GitHub Packages in gigabytes.  Paid minutes only apply to packages stored for private repositories. For more information, see \"[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\"  Access tokens must have the `user` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillingApi();
var username = username_example; // String | 

try {
    var result = api_instance.billingGetGithubPackagesBillingUser(username);
    print(result);
} catch (e) {
    print("Exception when calling BillingApi->billingGetGithubPackagesBillingUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

[**PackagesBillingUsage**](PackagesBillingUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetSharedStorageBillingGhe**
> CombinedBillingUsage billingGetSharedStorageBillingGhe(enterprise)

Get shared storage billing for an enterprise

Gets the estimated paid and estimated total storage used for GitHub Actions and Github Packages.  Paid minutes only apply to packages stored for private repositories. For more information, see \"[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\"  The authenticated user must be an enterprise admin.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillingApi();
var enterprise = enterprise_example; // String | The slug version of the enterprise name. You can also substitute this value with the enterprise id.

try {
    var result = api_instance.billingGetSharedStorageBillingGhe(enterprise);
    print(result);
} catch (e) {
    print("Exception when calling BillingApi->billingGetSharedStorageBillingGhe: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enterprise** | **String**| The slug version of the enterprise name. You can also substitute this value with the enterprise id. | 

### Return type

[**CombinedBillingUsage**](CombinedBillingUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetSharedStorageBillingOrg**
> CombinedBillingUsage billingGetSharedStorageBillingOrg(org)

Get shared storage billing for an organization

Gets the estimated paid and estimated total storage used for GitHub Actions and Github Packages.  Paid minutes only apply to packages stored for private repositories. For more information, see \"[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\"  Access tokens must have the `read:org` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillingApi();
var org = org_example; // String | 

try {
    var result = api_instance.billingGetSharedStorageBillingOrg(org);
    print(result);
} catch (e) {
    print("Exception when calling BillingApi->billingGetSharedStorageBillingOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**CombinedBillingUsage**](CombinedBillingUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingGetSharedStorageBillingUser**
> CombinedBillingUsage billingGetSharedStorageBillingUser(username)

Get shared storage billing for a user

Gets the estimated paid and estimated total storage used for GitHub Actions and Github Packages.  Paid minutes only apply to packages stored for private repositories. For more information, see \"[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\"  Access tokens must have the `user` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BillingApi();
var username = username_example; // String | 

try {
    var result = api_instance.billingGetSharedStorageBillingUser(username);
    print(result);
} catch (e) {
    print("Exception when calling BillingApi->billingGetSharedStorageBillingUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

[**CombinedBillingUsage**](CombinedBillingUsage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

