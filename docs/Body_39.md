# swagger.model.Body39

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repositories** | **List&lt;String&gt;** | A list of arrays indicating which repositories should be migrated. | [default to []]
**lockRepositories** | **bool** | Indicates whether repositories should be locked (to prevent manipulation) while migrating data. | [optional] [default to false]
**excludeAttachments** | **bool** | Indicates whether attachments should be excluded from the migration (to reduce migration archive file size). | [optional] [default to false]
**exclude** | **List&lt;String&gt;** |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

