# swagger.model.SelectedActions

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**githubOwnedAllowed** | **bool** | Whether GitHub-owned actions are allowed. For example, this includes the actions in the &#x60;actions&#x60; organization. | [optional] [default to null]
**verifiedAllowed** | **bool** | Whether actions in GitHub Marketplace from verified creators are allowed. Set to &#x60;true&#x60; to allow all GitHub Marketplace actions by verified creators. | [optional] [default to null]
**patternsAllowed** | **List&lt;String&gt;** | Specifies a list of string-matching patterns to allow specific action(s). Wildcards, tags, and SHAs are allowed. For example, &#x60;monalisa/octocat@*&#x60;, &#x60;monalisa/octocat@v2&#x60;, &#x60;monalisa/_*&#x60;.\&quot; | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

