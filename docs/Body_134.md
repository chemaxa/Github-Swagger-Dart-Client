# swagger.model.Body134

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expectedHeadSha** | **String** | The expected SHA of the pull request&#x27;s HEAD ref. This is the most recent commit on the pull request&#x27;s branch. If the expected SHA does not match the pull request&#x27;s HEAD, you will receive a &#x60;422 Unprocessable Entity&#x60; status. You can use the \&quot;[List commits](https://developer.github.com/v3/repos/commits/#list-commits)\&quot; endpoint to find the most recent commit SHA. Default: SHA of the pull request&#x27;s current HEAD ref. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

