# swagger.model.Body37

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inviteeId** | **int** | **Required unless you provide &#x60;email&#x60;**. GitHub user ID for the person you are inviting. | [optional] [default to null]
**email** | **String** | **Required unless you provide &#x60;invitee_id&#x60;**. Email address of the person you are inviting, which can be an existing GitHub user. | [optional] [default to null]
**role** | **String** | Specify role for new member. Can be one of:   \\* &#x60;admin&#x60; - Organization owners with full administrative rights to the organization and complete access to all repositories and teams.   \\* &#x60;direct_member&#x60; - Non-owner organization members with ability to see other members and join teams by invitation.   \\* &#x60;billing_manager&#x60; - Non-owner organization members with ability to manage the billing settings of your organization. | [optional] [default to RoleEnum.directMember_]
**teamIds** | **List&lt;int&gt;** | Specify IDs for the teams you want to invite new members to. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

