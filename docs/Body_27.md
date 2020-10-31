# swagger.model.Body27

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the runner group. | [default to null]
**visibility** | **String** | Visibility of a runner group. You can select all repositories, select individual repositories, or limit access to private repositories. Can be one of: &#x60;all&#x60;, &#x60;selected&#x60;, or &#x60;private&#x60;. | [optional] [default to VisibilityEnum.all_]
**selectedRepositoryIds** | **List&lt;int&gt;** | List of repository IDs that can access the runner group. | [optional] [default to []]
**runners** | **List&lt;int&gt;** | List of runner IDs to add to the runner group. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

