# swagger.api.CodeScanningApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**codeScanningGetAlert**](CodeScanningApi.md#codeScanningGetAlert) | **GET** /repos/{owner}/{repo}/code-scanning/alerts/{alert_number} | Get a code scanning alert
[**codeScanningListAlertsForRepo**](CodeScanningApi.md#codeScanningListAlertsForRepo) | **GET** /repos/{owner}/{repo}/code-scanning/alerts | List code scanning alerts for a repository
[**codeScanningListRecentAnalyses**](CodeScanningApi.md#codeScanningListRecentAnalyses) | **GET** /repos/{owner}/{repo}/code-scanning/analyses | List recent code scanning analyses for a repository
[**codeScanningUpdateAlert**](CodeScanningApi.md#codeScanningUpdateAlert) | **PATCH** /repos/{owner}/{repo}/code-scanning/alerts/{alert_number} | Update a code scanning alert
[**codeScanningUploadSarif**](CodeScanningApi.md#codeScanningUploadSarif) | **POST** /repos/{owner}/{repo}/code-scanning/sarifs | Upload a SARIF file

# **codeScanningGetAlert**
> CodeScanningAlertCodeScanningAlert codeScanningGetAlert(owner, repo, alertNumber)

Get a code scanning alert

Gets a single code scanning alert. You must use an access token with the `security_events` scope to use this endpoint. GitHub Apps must have the `security_events` read permission to use this endpoint.  The security `alert_number` is found at the end of the security alert's URL. For example, the security alert ID for `https://github.com/Octo-org/octo-repo/security/code-scanning/88` is `88`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CodeScanningApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var alertNumber = 56; // int | 

try {
    var result = api_instance.codeScanningGetAlert(owner, repo, alertNumber);
    print(result);
} catch (e) {
    print("Exception when calling CodeScanningApi->codeScanningGetAlert: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **alertNumber** | **int**|  | 

### Return type

[**CodeScanningAlertCodeScanningAlert**](CodeScanningAlertCodeScanningAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **codeScanningListAlertsForRepo**
> List<CodeScanningAlertCodeScanningAlertItems> codeScanningListAlertsForRepo(owner, repo, state, ref)

List code scanning alerts for a repository

Lists all open code scanning alerts for the default branch (usually `master`) and protected branches in a repository. For private repos, you must use an access token with the `repo` scope. For public repos, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` read permission to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CodeScanningApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var state = ; // CodeScanningAlertState | Set to `open`, `fixed`, or `dismissed` to list code scanning alerts in a specific state.
var ref = ; // CodeScanningAlertRef | Set a full Git reference to list alerts for a specific branch. The `ref` must be formatted as `refs/heads/<branch name>`.

try {
    var result = api_instance.codeScanningListAlertsForRepo(owner, repo, state, ref);
    print(result);
} catch (e) {
    print("Exception when calling CodeScanningApi->codeScanningListAlertsForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **state** | [**CodeScanningAlertState**](.md)| Set to &#x60;open&#x60;, &#x60;fixed&#x60;, or &#x60;dismissed&#x60; to list code scanning alerts in a specific state. | [optional] 
 **ref** | [**CodeScanningAlertRef**](.md)| Set a full Git reference to list alerts for a specific branch. The &#x60;ref&#x60; must be formatted as &#x60;refs/heads/&lt;branch name&gt;&#x60;. | [optional] 

### Return type

[**List<CodeScanningAlertCodeScanningAlertItems>**](CodeScanningAlertCodeScanningAlertItems.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **codeScanningListRecentAnalyses**
> List<CodeScanningAnalysisCodeScanningAnalysis> codeScanningListRecentAnalyses(owner, repo, ref, toolName)

List recent code scanning analyses for a repository

List the details of recent code scanning analyses for a repository. For private repos, you must use an access token with the `repo` scope. For public repos, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` read permission to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CodeScanningApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ; // CodeScanningAnalysisRef | Set a full Git reference to list alerts for a specific branch. The `ref` must be formatted as `refs/heads/<branch name>`.
var toolName = ; // CodeScanningAnalysisToolName | Set a single code scanning tool name to filter alerts by tool.

try {
    var result = api_instance.codeScanningListRecentAnalyses(owner, repo, ref, toolName);
    print(result);
} catch (e) {
    print("Exception when calling CodeScanningApi->codeScanningListRecentAnalyses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | [**CodeScanningAnalysisRef**](.md)| Set a full Git reference to list alerts for a specific branch. The &#x60;ref&#x60; must be formatted as &#x60;refs/heads/&lt;branch name&gt;&#x60;. | [optional] 
 **toolName** | [**CodeScanningAnalysisToolName**](.md)| Set a single code scanning tool name to filter alerts by tool. | [optional] 

### Return type

[**List<CodeScanningAnalysisCodeScanningAnalysis>**](CodeScanningAnalysisCodeScanningAnalysis.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **codeScanningUpdateAlert**
> CodeScanningAlertCodeScanningAlert codeScanningUpdateAlert(owner, repo, alertNumber, body)

Update a code scanning alert

Updates the status of a single code scanning alert. For private repos, you must use an access token with the `repo` scope. For public repos, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` write permission to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CodeScanningApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var alertNumber = ; // CodeScanningAlertNumber | The code scanning alert number.
var body = new Body73(); // Body73 | 

try {
    var result = api_instance.codeScanningUpdateAlert(owner, repo, alertNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling CodeScanningApi->codeScanningUpdateAlert: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **alertNumber** | [**CodeScanningAlertNumber**](.md)| The code scanning alert number. | 
 **body** | [**Body73**](Body73.md)|  | [optional] 

### Return type

[**CodeScanningAlertCodeScanningAlert**](CodeScanningAlertCodeScanningAlert.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **codeScanningUploadSarif**
> codeScanningUploadSarif(owner, repo, body)

Upload a SARIF file

Upload a SARIF file containing the results of a code scanning analysis to make the results available in a repository. For private repos, you must use an access token with the `repo` scope. For public repos, you must use an access token with `public_repo` and `repo:security_events` scopes. GitHub Apps must have the `security_events` write permission to use this endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CodeScanningApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body74(); // Body74 | 

try {
    api_instance.codeScanningUploadSarif(owner, repo, body);
} catch (e) {
    print("Exception when calling CodeScanningApi->codeScanningUploadSarif: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body74**](Body74.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

