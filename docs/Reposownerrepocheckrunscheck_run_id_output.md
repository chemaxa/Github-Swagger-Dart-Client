# swagger.model.ReposownerrepocheckrunscheckRunIdOutput

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | **Required**. | [optional] [default to null]
**summary** | **String** | Can contain Markdown. | [default to null]
**text** | **String** | Can contain Markdown. | [optional] [default to null]
**annotations** | [**List&lt;ReposownerrepocheckrunsOutputAnnotations&gt;**](ReposownerrepocheckrunsOutputAnnotations.md) | Adds information from your analysis to specific lines of code. Annotations are visible in GitHub&#x27;s pull request UI. Annotations are visible in GitHub&#x27;s pull request UI. The Checks API limits the number of annotations to a maximum of 50 per API request. To create more than 50 annotations, you have to make multiple requests to the [Update a check run](https://developer.github.com/v3/checks/runs/#update-a-check-run) endpoint. Each time you update the check run, annotations are appended to the list of annotations that already exist for the check run. For details about annotations in the UI, see \&quot;[About status checks](https://help.github.com/articles/about-status-checks#checks)\&quot;. See the [&#x60;annotations&#x60; object](https://developer.github.com/v3/checks/runs/#annotations-object-1) description for details. | [optional] [default to []]
**images** | [**List&lt;ReposownerrepocheckrunsOutputImages&gt;**](ReposownerrepocheckrunsOutputImages.md) | Adds images to the output displayed in the GitHub pull request UI. See the [&#x60;images&#x60; object](https://developer.github.com/v3/checks/runs/#annotations-object-1) description for details. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

