# swagger.model.Body31

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**encryptedValue** | **String** | Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get an organization public key](https://developer.github.com/v3/actions/secrets/#get-an-organization-public-key) endpoint. | [optional] [default to null]
**keyId** | **String** | ID of the key you used to encrypt the secret. | [optional] [default to null]
**visibility** | **String** | Configures the access that repositories have to the organization secret. Can be one of:   \\- &#x60;all&#x60; - All repositories in an organization can access the secret.   \\- &#x60;private&#x60; - Private repositories in an organization can access the secret.   \\- &#x60;selected&#x60; - Only specific repositories can access the secret. | [optional] [default to null]
**selectedRepositoryIds** | **List&lt;String&gt;** | An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the &#x60;visibility&#x60; is set to &#x60;selected&#x60;. You can manage the list of selected repositories using the [List selected repositories for an organization secret](https://developer.github.com/v3/actions/secrets/#list-selected-repositories-for-an-organization-secret), [Set selected repositories for an organization secret](https://developer.github.com/v3/actions/secrets/#set-selected-repositories-for-an-organization-secret), and [Remove selected repository from an organization secret](https://developer.github.com/v3/actions/secrets/#remove-selected-repository-from-an-organization-secret) endpoints. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

