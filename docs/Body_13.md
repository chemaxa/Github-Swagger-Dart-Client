# swagger.model.Body13

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the runner group. | [default to null]
**visibility** | **String** | Visibility of a runner group. You can select all organizations or select individual organization. Can be one of: &#x60;all&#x60; or &#x60;selected&#x60; | [optional] [default to null]
**selectedOrganizationIds** | **List&lt;int&gt;** | List of organization IDs that can access the runner group. | [optional] [default to []]
**runners** | **List&lt;int&gt;** | List of runner IDs to add to the runner group. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

