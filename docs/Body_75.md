# swagger.model.Body75

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permission** | **String** | The permission to grant the collaborator. **Only valid on organization-owned repositories.** Can be one of:   \\* &#x60;pull&#x60; - can pull, but not push to or administer this repository.   \\* &#x60;push&#x60; - can pull and push, but not administer this repository.   \\* &#x60;admin&#x60; - can pull, push and administer this repository.   \\* &#x60;maintain&#x60; - Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.   \\* &#x60;triage&#x60; - Recommended for contributors who need to proactively manage issues and pull requests without write access. | [optional] [default to PermissionEnum.push_]
**permissions** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

