# swagger.api.GitignoreApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gitignoreGetAllTemplates**](GitignoreApi.md#gitignoreGetAllTemplates) | **GET** /gitignore/templates | Get all gitignore templates
[**gitignoreGetTemplate**](GitignoreApi.md#gitignoreGetTemplate) | **GET** /gitignore/templates/{name} | Get a gitignore template

# **gitignoreGetAllTemplates**
> List<String> gitignoreGetAllTemplates()

Get all gitignore templates

List all templates available to pass as an option when [creating a repository](https://developer.github.com/v3/repos/#create-a-repository-for-the-authenticated-user).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitignoreApi();

try {
    var result = api_instance.gitignoreGetAllTemplates();
    print(result);
} catch (e) {
    print("Exception when calling GitignoreApi->gitignoreGetAllTemplates: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitignoreGetTemplate**
> GitignoreTemplate gitignoreGetTemplate(name)

Get a gitignore template

The API also allows fetching the source of a single template. Use the raw [media type](https://developer.github.com/v3/media/) to get the raw contents.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitignoreApi();
var name = name_example; // String | 

try {
    var result = api_instance.gitignoreGetTemplate(name);
    print(result);
} catch (e) {
    print("Exception when calling GitignoreApi->gitignoreGetTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**GitignoreTemplate**](GitignoreTemplate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

