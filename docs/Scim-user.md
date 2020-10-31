# swagger.model.ScimUser

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schemas** | **List&lt;String&gt;** | SCIM schema used. | [default to []]
**id** | **String** | Unique identifier of an external identity | [default to null]
**externalId** | **String** | The ID of the User. | [default to null]
**userName** | **String** | Configured by the admin. Could be an email, login, or username | [default to null]
**displayName** | **String** | The name of the user, suitable for display to end-users | [optional] [default to null]
**name** | [**ScimuserName**](ScimuserName.md) |  | [default to null]
**emails** | [**List&lt;ScimuserEmails&gt;**](ScimuserEmails.md) | user emails | [default to []]
**active** | **bool** | The active status of the User. | [default to null]
**meta** | [**ScimuserMeta**](ScimuserMeta.md) |  | [default to null]
**organizationId** | **int** | The ID of the organization. | [optional] [default to null]
**operations** | [**List&lt;ScimuserOperations&gt;**](ScimuserOperations.md) | Set of operations to be performed | [optional] [default to []]
**groups** | [**List&lt;ScimuserGroups&gt;**](ScimuserGroups.md) | associated groups | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

