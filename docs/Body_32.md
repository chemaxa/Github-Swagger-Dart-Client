# swagger.model.Body32

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**selectedRepositoryIds** | **List&lt;int&gt;** | An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the &#x60;visibility&#x60; is set to &#x60;selected&#x60;. You can add and remove individual repositories using the [Set selected repositories for an organization secret](https://developer.github.com/v3/actions/secrets/#set-selected-repositories-for-an-organization-secret) and [Remove selected repository from an organization secret](https://developer.github.com/v3/actions/secrets/#remove-selected-repository-from-an-organization-secret) endpoints. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

