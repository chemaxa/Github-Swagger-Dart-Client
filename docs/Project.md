# swagger.model.Project

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ownerUrl** | **String** |  | [default to null]
**url** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**columnsUrl** | **String** |  | [default to null]
**id** | **int** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**name** | **String** | Name of the project | [default to null]
**body** | **String** | Body of the project | [default to null]
**number** | **int** |  | [default to null]
**state** | **String** | State of the project; either &#x27;open&#x27; or &#x27;closed&#x27; | [default to null]
**creator** | [**AllOfprojectCreator**](AllOfprojectCreator.md) |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**organizationPermission** | **String** | The baseline permission that all organization members have on this project | [optional] [default to null]
**private** | **bool** | Whether or not this project can be seen by everyone. | [optional] [default to null]
**cardsUrl** | **String** |  | [optional] [default to null]
**permissions** | [**ProjectPermissions**](ProjectPermissions.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

