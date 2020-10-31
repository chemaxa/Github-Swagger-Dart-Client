# swagger.model.RepositoryInvitation

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier of the repository invitation. | [default to null]
**repository** | [**MinimalRepository**](MinimalRepository.md) |  | [default to null]
**invitee** | [**AllOfrepositoryInvitationInvitee**](AllOfrepositoryInvitationInvitee.md) |  | [default to null]
**inviter** | [**AllOfrepositoryInvitationInviter**](AllOfrepositoryInvitationInviter.md) |  | [default to null]
**permissions** | **String** | The permission associated with the invitation. | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**url** | **String** | URL for the repository invitation | [default to null]
**htmlUrl** | **String** |  | [default to null]
**nodeId** | **String** |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

