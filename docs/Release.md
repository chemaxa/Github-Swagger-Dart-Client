# swagger.model.Release

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [default to null]
**htmlUrl** | **String** |  | [default to null]
**assetsUrl** | **String** |  | [default to null]
**uploadUrl** | **String** |  | [default to null]
**tarballUrl** | **String** |  | [default to null]
**zipballUrl** | **String** |  | [default to null]
**id** | **int** |  | [default to null]
**nodeId** | **String** |  | [default to null]
**tagName** | **String** | The name of the tag. | [default to null]
**targetCommitish** | **String** | Specifies the commitish value that determines where the Git tag is created from. | [default to null]
**name** | **String** |  | [default to null]
**body** | **String** |  | [optional] [default to null]
**draft** | **bool** | true to create a draft (unpublished) release, false to create a published one. | [default to null]
**prerelease** | **bool** | Whether to identify the release as a prerelease or a full release. | [default to null]
**createdAt** | [**DateTime**](DateTime.md) |  | [default to null]
**publishedAt** | [**DateTime**](DateTime.md) |  | [default to null]
**author** | [**SimpleUser**](SimpleUser.md) |  | [default to null]
**assets** | [**List&lt;ReleaseAsset&gt;**](ReleaseAsset.md) |  | [default to []]
**bodyHtml** | **String** |  | [optional] [default to null]
**bodyText** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

