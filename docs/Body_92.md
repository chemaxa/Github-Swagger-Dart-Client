# swagger.model.Body92

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config** | [**ReposownerrepohookshookIdConfig**](ReposownerrepohookshookIdConfig.md) |  | [optional] [default to null]
**events** | **List&lt;String&gt;** | Determines what [events](https://developer.github.com/webhooks/event-payloads) the hook is triggered for. This replaces the entire array of events. | [optional] [default to []]
**addEvents** | **List&lt;String&gt;** | Determines a list of events to be added to the list of events that the Hook triggers for. | [optional] [default to []]
**removeEvents** | **List&lt;String&gt;** | Determines a list of events to be removed from the list of events that the Hook triggers for. | [optional] [default to []]
**active** | **bool** | Determines if notifications are sent when the webhook is triggered. Set to &#x60;true&#x60; to send notifications. | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

