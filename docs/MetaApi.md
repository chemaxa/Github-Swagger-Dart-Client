# swagger.api.MetaApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metaGet**](MetaApi.md#metaGet) | **GET** /meta | Get GitHub meta information
[**metaGetOctocat**](MetaApi.md#metaGetOctocat) | **GET** /octocat | Get Octocat
[**metaGetZen**](MetaApi.md#metaGetZen) | **GET** /zen | Get the Zen of GitHub
[**metaRoot**](MetaApi.md#metaRoot) | **GET** / | GitHub API Root

# **metaGet**
> ApiOverview metaGet()

Get GitHub meta information

This endpoint provides a list of GitHub's IP addresses. For more information, see \"[About GitHub's IP addresses](https://help.github.com/articles/about-github-s-ip-addresses/).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MetaApi();

try {
    var result = api_instance.metaGet();
    print(result);
} catch (e) {
    print("Exception when calling MetaApi->metaGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiOverview**](ApiOverview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **metaGetOctocat**
> String metaGetOctocat(s)

Get Octocat

Get the octocat as ASCII art

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MetaApi();
var s = s_example; // String | The words to show in Octocat's speech bubble

try {
    var result = api_instance.metaGetOctocat(s);
    print(result);
} catch (e) {
    print("Exception when calling MetaApi->metaGetOctocat: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s** | **String**| The words to show in Octocat&#x27;s speech bubble | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octocat-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **metaGetZen**
> String metaGetZen()

Get the Zen of GitHub

Get a random sentence from the Zen of GitHub

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MetaApi();

try {
    var result = api_instance.metaGetZen();
    print(result);
} catch (e) {
    print("Exception when calling MetaApi->metaGetZen: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **metaRoot**
> InlineResponse200 metaRoot()

GitHub API Root

Get Hypermedia links to resources accessible in GitHub's REST API

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MetaApi();

try {
    var result = api_instance.metaRoot();
    print(result);
} catch (e) {
    print("Exception when calling MetaApi->metaRoot: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

