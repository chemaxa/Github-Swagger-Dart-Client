# swagger.model.AuthenticationToken

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | The token used for authentication | [default to null]
**expiresAt** | [**DateTime**](DateTime.md) | The time this token expires | [default to null]
**permissions** | [**Object**](Object.md) |  | [optional] [default to null]
**repositories** | [**List&lt;Repository&gt;**](Repository.md) | The repositories this token has access to | [optional] [default to []]
**singleFile** | **String** |  | [optional] [default to null]
**repositorySelection** | **String** | Describe whether all repositories have been selected or there&#x27;s a selection involved | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

