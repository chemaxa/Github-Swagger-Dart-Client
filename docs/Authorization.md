# swagger.model.Authorization

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [default to null]
**url** | **String** |  | [default to null]
**scopes** | **List&lt;String&gt;** | A list of scopes that this authorization is in. | [default to []]
**token** | **String** |  | [default to null]
**tokenLastEight** | **String** |  | [default to null]
**hashedToken** | **String** |  | [default to null]
**app** | [**ApplicationgrantApp**](ApplicationgrantApp.md) |  | [default to null]
**note** | **String** |  | [default to null]
**noteUrl** | **String** |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**fingerprint** | **String** |  | [default to null]
**user** | [**AllOfauthorizationUser**](AllOfauthorizationUser.md) |  | [optional] [default to null]
**installation** | [**AllOfauthorizationInstallation**](AllOfauthorizationInstallation.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

