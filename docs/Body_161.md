# swagger.model.Body161

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permission** | **String** | The permission to grant the team on this repository. Can be one of:   \\* &#x60;pull&#x60; - team members can pull, but not push to or administer this repository.   \\* &#x60;push&#x60; - team members can pull and push, but not administer this repository.   \\* &#x60;admin&#x60; - team members can pull, push and administer this repository.      If no permission is specified, the team&#x27;s &#x60;permission&#x60; attribute will be used to determine what permission to grant the team on this repository. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

