# swagger.model.GpgKey

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [default to null]
**primaryKeyId** | **int** |  | [default to null]
**keyId** | **String** |  | [default to null]
**publicKey** | **String** |  | [default to null]
**emails** | [**List&lt;GpgkeyEmails&gt;**](GpgkeyEmails.md) |  | [default to []]
**subkeys** | [**List&lt;GpgkeySubkeys&gt;**](GpgkeySubkeys.md) |  | [default to []]
**canSign** | **bool** |  | [default to null]
**canEncryptComms** | **bool** |  | [default to null]
**canEncryptStorage** | **bool** |  | [default to null]
**canCertify** | **bool** |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**expiresAt** | [**DateTime**](DateTime.md) |  | [default to null]
**rawKey** | **String** |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

