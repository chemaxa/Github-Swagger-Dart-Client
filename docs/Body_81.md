# swagger.model.Body81

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ref** | **String** | The ref to deploy. This can be a branch, tag, or SHA. | [default to null]
**task** | **String** | Specifies a task to execute (e.g., &#x60;deploy&#x60; or &#x60;deploy:migrations&#x60;). | [optional] [default to &quot;deploy&quot;]
**autoMerge** | **bool** | Attempts to automatically merge the default branch into the requested ref, if it&#x27;s behind the default branch. | [optional] [default to true]
**requiredContexts** | **List&lt;String&gt;** | The [status](https://developer.github.com/v3/repos/statuses/) contexts to verify against commit status checks. If you omit this parameter, GitHub verifies all unique contexts before creating a deployment. To bypass checking entirely, pass an empty array. Defaults to all unique contexts. | [optional] [default to []]
**payload** | **String** | JSON payload with extra information about the deployment. | [optional] [default to &quot;&quot;]
**environment** | **String** | Name for the target deployment environment (e.g., &#x60;production&#x60;, &#x60;staging&#x60;, &#x60;qa&#x60;). | [optional] [default to &quot;production&quot;]
**description** | **String** | Short description of the deployment. | [optional] [default to &quot;&quot;]
**transientEnvironment** | **bool** | Specifies if the given environment is specific to the deployment and will no longer exist at some point in the future. Default: &#x60;false&#x60;   **Note:** This parameter requires you to use the [&#x60;application/vnd.github.ant-man-preview+json&#x60;](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [&#x60;application/vnd.github.ant-man-preview+json&#x60;](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. | [optional] [default to false]
**productionEnvironment** | **bool** | Specifies if the given environment is one that end-users directly interact with. Default: &#x60;true&#x60; when &#x60;environment&#x60; is &#x60;production&#x60; and &#x60;false&#x60; otherwise.   **Note:** This parameter requires you to use the [&#x60;application/vnd.github.ant-man-preview+json&#x60;](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. | [optional] [default to null]
**createdAt** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

