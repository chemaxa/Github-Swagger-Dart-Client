# swagger.model.CredentialAuthorization

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **String** | User login that owns the underlying credential. | [default to null]
**credentialId** | **int** | Unique identifier for the credential. | [default to null]
**credentialType** | **String** | Human-readable description of the credential type. | [default to null]
**tokenLastEight** | **String** | Last eight characters of the credential. Only included in responses with credential_type of personal access token. | [optional] [default to null]
**credentialAuthorizedAt** | [**DateTime**](DateTime.md) | Date when the credential was authorized for use. | [default to null]
**scopes** | **List&lt;String&gt;** | List of oauth scopes the token has been granted. | [optional] [default to []]
**fingerprint** | **String** | Unique string to distinguish the credential. Only included in responses with credential_type of SSH Key. | [optional] [default to null]
**credentialAccessedAt** | [**DateTime**](DateTime.md) | Date when the credential was last accessed. May be null if it was never accessed | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

