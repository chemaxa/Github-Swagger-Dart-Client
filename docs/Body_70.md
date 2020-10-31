# swagger.model.Body70

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the check. For example, \&quot;code-coverage\&quot;. | [optional] [default to null]
**detailsUrl** | **String** | The URL of the integrator&#x27;s site that has the full details of the check. | [optional] [default to null]
**externalId** | **String** | A reference for the run on the integrator&#x27;s system. | [optional] [default to null]
**startedAt** | **String** | This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] [default to null]
**status** | **String** | The current status. Can be one of &#x60;queued&#x60;, &#x60;in_progress&#x60;, or &#x60;completed&#x60;. | [optional] [default to null]
**conclusion** | **String** | **Required if you provide &#x60;completed_at&#x60; or a &#x60;status&#x60; of &#x60;completed&#x60;**. The final conclusion of the check. Can be one of &#x60;success&#x60;, &#x60;failure&#x60;, &#x60;neutral&#x60;, &#x60;cancelled&#x60;, &#x60;skipped&#x60;, &#x60;timed_out&#x60;, or &#x60;action_required&#x60;.   **Note:** Providing &#x60;conclusion&#x60; will automatically set the &#x60;status&#x60; parameter to &#x60;completed&#x60;. Only GitHub can change a check run conclusion to &#x60;stale&#x60;. | [optional] [default to null]
**completedAt** | **String** | The time the check completed. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] [default to null]
**output** | [**ReposownerrepocheckrunscheckRunIdOutput**](ReposownerrepocheckrunscheckRunIdOutput.md) |  | [optional] [default to null]
**actions** | [**List&lt;ReposownerrepocheckrunsActions&gt;**](ReposownerrepocheckrunsActions.md) | Possible further actions the integrator can perform, which a user may trigger. Each action includes a &#x60;label&#x60;, &#x60;identifier&#x60; and &#x60;description&#x60;. A maximum of three actions are accepted. See the [&#x60;actions&#x60; object](https://developer.github.com/v3/checks/runs/#actions-object) description. To learn more about check runs and requested actions, see \&quot;[Check runs and requested actions](https://developer.github.com/v3/checks/runs/#check-runs-and-requested-actions).\&quot; | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

