# swagger.model.Body9

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scopes** | **List&lt;String&gt;** | A list of scopes that this authorization is in. | [optional] [default to []]
**addScopes** | **List&lt;String&gt;** | A list of scopes to add to this authorization. | [optional] [default to []]
**removeScopes** | **List&lt;String&gt;** | A list of scopes to remove from this authorization. | [optional] [default to []]
**note** | **String** | A note to remind you what the OAuth token is for. | [optional] [default to null]
**noteUrl** | **String** | A URL to remind you what app the OAuth token is for. | [optional] [default to null]
**fingerprint** | **String** | A unique string to distinguish an authorization from others created for the same client ID and user. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

