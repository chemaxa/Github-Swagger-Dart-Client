# swagger.model.TeamFull

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier of the team | [default to null]
**nodeId** | **String** |  | [default to null]
**url** | **String** | URL for the team | [default to null]
**htmlUrl** | **String** |  | [default to null]
**name** | **String** | Name of the team | [default to null]
**slug** | **String** |  | [default to null]
**description** | **String** |  | [default to null]
**privacy** | **String** | The level of privacy this team should have | [optional] [default to null]
**permission** | **String** | Permission that the team will have for its repositories | [default to null]
**membersUrl** | **String** |  | [default to null]
**repositoriesUrl** | **String** |  | [default to null]
**parent** | [**AllOfteamFullParent**](AllOfteamFullParent.md) |  | [optional] [default to null]
**membersCount** | **int** |  | [default to null]
**reposCount** | **int** |  | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**updatedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**organization** | [**OrganizationFull**](OrganizationFull.md) |  | [default to null]
**ldapDn** | **String** | Distinguished Name (DN) that team maps to within LDAP environment | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

