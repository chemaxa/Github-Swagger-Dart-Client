# swagger.model.Hook

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [default to null]
**id** | **int** | Unique identifier of the webhook. | [default to null]
**name** | **String** | The name of a valid service, use &#x27;web&#x27; for a webhook. | [default to null]
**active** | **bool** | Determines whether the hook is actually triggered on pushes. | [default to null]
**events** | **List&lt;String&gt;** | Determines what events the hook is triggered for. Default: [&#x27;push&#x27;]. | [default to []]
**config** | [**HookConfig**](HookConfig.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**url** | **String** |  | [default to null]
**testUrl** | **String** |  | [default to null]
**pingUrl** | **String** |  | [default to null]
**lastResponse** | [**HookResponse**](HookResponse.md) |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

