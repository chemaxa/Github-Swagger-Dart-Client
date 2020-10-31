# swagger.model.Body94

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vcsUrl** | **String** | The URL of the originating repository. | [default to null]
**vcs** | **String** | The originating VCS type. Can be one of &#x60;subversion&#x60;, &#x60;git&#x60;, &#x60;mercurial&#x60;, or &#x60;tfvc&#x60;. Please be aware that without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response. | [optional] [default to null]
**vcsUsername** | **String** | If authentication is required, the username to provide to &#x60;vcs_url&#x60;. | [optional] [default to null]
**vcsPassword** | **String** | If authentication is required, the password to provide to &#x60;vcs_url&#x60;. | [optional] [default to null]
**tfvcProject** | **String** | For a tfvc import, the name of the project that is being imported. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

