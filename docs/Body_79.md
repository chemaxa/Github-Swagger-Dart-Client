# swagger.model.Body79

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | The commit message. | [default to null]
**content** | **String** | The new file content, using Base64 encoding. | [default to null]
**sha** | **String** | **Required if you are updating a file**. The blob SHA of the file being replaced. | [optional] [default to null]
**branch** | **String** | The branch name. Default: the repository’s default branch (usually &#x60;master&#x60;) | [optional] [default to null]
**committer** | [**ReposownerrepocontentspathCommitter**](ReposownerrepocontentspathCommitter.md) |  | [optional] [default to null]
**author** | [**ReposownerrepocontentspathAuthor**](ReposownerrepocontentspathAuthor.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

