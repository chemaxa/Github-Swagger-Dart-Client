# swagger.model.Body137

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tagName** | **String** | The name of the tag. | [optional] [default to null]
**targetCommitish** | **String** | Specifies the commitish value that determines where the Git tag is created from. Can be any branch or commit SHA. Unused if the Git tag already exists. Default: the repository&#x27;s default branch (usually &#x60;master&#x60;). | [optional] [default to null]
**name** | **String** | The name of the release. | [optional] [default to null]
**body** | **String** | Text describing the contents of the tag. | [optional] [default to null]
**draft** | **bool** | &#x60;true&#x60; makes the release a draft, and &#x60;false&#x60; publishes the release. | [optional] [default to null]
**prerelease** | **bool** | &#x60;true&#x60; to identify the release as a prerelease, &#x60;false&#x60; to identify the release as a full release. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

