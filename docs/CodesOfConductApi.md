# swagger.api.CodesOfConductApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**codesOfConductGetAllCodesOfConduct**](CodesOfConductApi.md#codesOfConductGetAllCodesOfConduct) | **GET** /codes_of_conduct | Get all codes of conduct
[**codesOfConductGetConductCode**](CodesOfConductApi.md#codesOfConductGetConductCode) | **GET** /codes_of_conduct/{key} | Get a code of conduct
[**codesOfConductGetForRepo**](CodesOfConductApi.md#codesOfConductGetForRepo) | **GET** /repos/{owner}/{repo}/community/code_of_conduct | Get the code of conduct for a repository

# **codesOfConductGetAllCodesOfConduct**
> List<CodeOfConduct> codesOfConductGetAllCodesOfConduct()

Get all codes of conduct

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CodesOfConductApi();

try {
    var result = api_instance.codesOfConductGetAllCodesOfConduct();
    print(result);
} catch (e) {
    print("Exception when calling CodesOfConductApi->codesOfConductGetAllCodesOfConduct: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CodeOfConduct>**](CodeOfConduct.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **codesOfConductGetConductCode**
> CodeOfConduct codesOfConductGetConductCode(key)

Get a code of conduct

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CodesOfConductApi();
var key = key_example; // String | 

try {
    var result = api_instance.codesOfConductGetConductCode(key);
    print(result);
} catch (e) {
    print("Exception when calling CodesOfConductApi->codesOfConductGetConductCode: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**|  | 

### Return type

[**CodeOfConduct**](CodeOfConduct.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **codesOfConductGetForRepo**
> CodeOfConduct codesOfConductGetForRepo(owner, repo)

Get the code of conduct for a repository

This method returns the contents of the repository's code of conduct file, if one is detected.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CodesOfConductApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.codesOfConductGetForRepo(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling CodesOfConductApi->codesOfConductGetForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**CodeOfConduct**](CodeOfConduct.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

