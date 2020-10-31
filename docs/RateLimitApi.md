# swagger.api.RateLimitApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rateLimitGet**](RateLimitApi.md#rateLimitGet) | **GET** /rate_limit | Get rate limit status for the authenticated user

# **rateLimitGet**
> RateLimitOverview rateLimitGet()

Get rate limit status for the authenticated user

**Note:** Accessing this endpoint does not count against your REST API rate limit.  **Note:** The `rate` object is deprecated. If you're writing new API client code or updating existing code, you should use the `core` object instead of the `rate` object. The `core` object contains the same information that is present in the `rate` object.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new RateLimitApi();

try {
    var result = api_instance.rateLimitGet();
    print(result);
} catch (e) {
    print("Exception when calling RateLimitApi->rateLimitGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RateLimitOverview**](RateLimitOverview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

