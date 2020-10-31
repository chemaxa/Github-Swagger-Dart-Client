# swagger.model.Body103

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the issue. | [optional] [default to null]
**body** | **String** | The contents of the issue. | [optional] [default to null]
**assignee** | **String** | Login for the user that this issue should be assigned to. **This field is deprecated.** | [optional] [default to null]
**state** | **String** | State of the issue. Either &#x60;open&#x60; or &#x60;closed&#x60;. | [optional] [default to null]
**milestone** | **int** | The &#x60;number&#x60; of the milestone to associate this issue with or &#x60;null&#x60; to remove current. _NOTE: Only users with push access can set the milestone for issues. The milestone is silently dropped otherwise._ | [optional] [default to null]
**labels** | [**List&lt;OneOfbody103LabelsItems&gt;**](Object.md) | Labels to associate with this issue. Pass one or more Labels to _replace_ the set of Labels on this Issue. Send an empty array (&#x60;[]&#x60;) to clear all Labels from the Issue. _NOTE: Only users with push access can set labels for issues. Labels are silently dropped otherwise._ | [optional] [default to []]
**assignees** | **List&lt;String&gt;** | Logins for Users to assign to this issue. Pass one or more user logins to _replace_ the set of assignees on this Issue. Send an empty array (&#x60;[]&#x60;) to clear all assignees from the Issue. _NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise._ | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

