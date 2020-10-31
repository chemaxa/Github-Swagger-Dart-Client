# swagger.api.EmojisApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emojisGet**](EmojisApi.md#emojisGet) | **GET** /emojis | Get emojis

# **emojisGet**
> Map<String, String> emojisGet()

Get emojis

Lists all the emojis available to use on GitHub.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EmojisApi();

try {
    var result = api_instance.emojisGet();
    print(result);
} catch (e) {
    print("Exception when calling EmojisApi->emojisGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Map<String, String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

