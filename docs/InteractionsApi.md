# swagger.api.InteractionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**interactionsGetRestrictionsForOrg**](InteractionsApi.md#interactionsGetRestrictionsForOrg) | **GET** /orgs/{org}/interaction-limits | Get interaction restrictions for an organization
[**interactionsGetRestrictionsForRepo**](InteractionsApi.md#interactionsGetRestrictionsForRepo) | **GET** /repos/{owner}/{repo}/interaction-limits | Get interaction restrictions for a repository
[**interactionsRemoveRestrictionsForOrg**](InteractionsApi.md#interactionsRemoveRestrictionsForOrg) | **DELETE** /orgs/{org}/interaction-limits | Remove interaction restrictions for an organization
[**interactionsRemoveRestrictionsForRepo**](InteractionsApi.md#interactionsRemoveRestrictionsForRepo) | **DELETE** /repos/{owner}/{repo}/interaction-limits | Remove interaction restrictions for a repository
[**interactionsSetRestrictionsForOrg**](InteractionsApi.md#interactionsSetRestrictionsForOrg) | **PUT** /orgs/{org}/interaction-limits | Set interaction restrictions for an organization
[**interactionsSetRestrictionsForRepo**](InteractionsApi.md#interactionsSetRestrictionsForRepo) | **PUT** /repos/{owner}/{repo}/interaction-limits | Set interaction restrictions for a repository

# **interactionsGetRestrictionsForOrg**
> InteractionLimit interactionsGetRestrictionsForOrg(org)

Get interaction restrictions for an organization

Shows which group of GitHub users can interact with this organization and when the restriction expires. If there are no restrictions, you will see an empty response.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new InteractionsApi();
var org = org_example; // String | 

try {
    var result = api_instance.interactionsGetRestrictionsForOrg(org);
    print(result);
} catch (e) {
    print("Exception when calling InteractionsApi->interactionsGetRestrictionsForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**InteractionLimit**](InteractionLimit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **interactionsGetRestrictionsForRepo**
> InteractionLimit interactionsGetRestrictionsForRepo(owner, repo)

Get interaction restrictions for a repository

Shows which group of GitHub users can interact with this repository and when the restriction expires. If there are no restrictions, you will see an empty response.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new InteractionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.interactionsGetRestrictionsForRepo(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling InteractionsApi->interactionsGetRestrictionsForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**InteractionLimit**](InteractionLimit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **interactionsRemoveRestrictionsForOrg**
> interactionsRemoveRestrictionsForOrg(org)

Remove interaction restrictions for an organization

Removes all interaction restrictions from public repositories in the given organization. You must be an organization owner to remove restrictions.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new InteractionsApi();
var org = org_example; // String | 

try {
    api_instance.interactionsRemoveRestrictionsForOrg(org);
} catch (e) {
    print("Exception when calling InteractionsApi->interactionsRemoveRestrictionsForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **interactionsRemoveRestrictionsForRepo**
> interactionsRemoveRestrictionsForRepo(owner, repo)

Remove interaction restrictions for a repository

Removes all interaction restrictions from the given repository. You must have owner or admin access to remove restrictions.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new InteractionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.interactionsRemoveRestrictionsForRepo(owner, repo);
} catch (e) {
    print("Exception when calling InteractionsApi->interactionsRemoveRestrictionsForRepo: $e\n");
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

# **interactionsSetRestrictionsForOrg**
> InteractionLimit interactionsSetRestrictionsForOrg(org, body)

Set interaction restrictions for an organization

Temporarily restricts interactions to certain GitHub users in any public repository in the given organization. You must be an organization owner to set these restrictions.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new InteractionsApi();
var org = org_example; // String | 
var body = new Body36(); // Body36 | 

try {
    var result = api_instance.interactionsSetRestrictionsForOrg(org, body);
    print(result);
} catch (e) {
    print("Exception when calling InteractionsApi->interactionsSetRestrictionsForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body36**](Body36.md)|  | [optional] 

### Return type

[**InteractionLimit**](InteractionLimit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **interactionsSetRestrictionsForRepo**
> InteractionLimit interactionsSetRestrictionsForRepo(owner, repo, body)

Set interaction restrictions for a repository

Temporarily restricts interactions to certain GitHub users within the given repository. You must have owner or admin access to set restrictions.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new InteractionsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body98(); // Body98 | 

try {
    var result = api_instance.interactionsSetRestrictionsForRepo(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling InteractionsApi->interactionsSetRestrictionsForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body98**](Body98.md)|  | [optional] 

### Return type

[**InteractionLimit**](InteractionLimit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

