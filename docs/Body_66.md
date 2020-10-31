# swagger.model.Body66

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requiredStatusChecks** | [**ReposownerrepobranchesbranchprotectionRequiredStatusChecks**](ReposownerrepobranchesbranchprotectionRequiredStatusChecks.md) |  | [default to null]
**enforceAdmins** | **bool** | Enforce all configured restrictions for administrators. Set to &#x60;true&#x60; to enforce required status checks for repository administrators. Set to &#x60;null&#x60; to disable. | [default to null]
**requiredPullRequestReviews** | [**ReposownerrepobranchesbranchprotectionRequiredPullRequestReviews**](ReposownerrepobranchesbranchprotectionRequiredPullRequestReviews.md) |  | [default to null]
**restrictions** | [**ReposownerrepobranchesbranchprotectionRestrictions**](ReposownerrepobranchesbranchprotectionRestrictions.md) |  | [default to null]
**requiredLinearHistory** | **bool** | Enforces a linear commit Git history, which prevents anyone from pushing merge commits to a branch. Set to &#x60;true&#x60; to enforce a linear commit history. Set to &#x60;false&#x60; to disable a linear commit Git history. Your repository must allow squash merging or rebase merging before you can enable a linear commit history. Default: &#x60;false&#x60;. For more information, see \&quot;[Requiring a linear commit history](https://help.github.com/github/administering-a-repository/requiring-a-linear-commit-history)\&quot; in the GitHub Help documentation. | [optional] [default to null]
**allowForcePushes** | **bool** | Permits force pushes to the protected branch by anyone with write access to the repository. Set to &#x60;true&#x60; to allow force pushes. Set to &#x60;false&#x60; or &#x60;null&#x60; to block force pushes. Default: &#x60;false&#x60;. For more information, see \&quot;[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)\&quot; in the GitHub Help documentation.\&quot; | [optional] [default to null]
**allowDeletions** | **bool** | Allows deletion of the protected branch by anyone with write access to the repository. Set to &#x60;false&#x60; to prevent deletion of the protected branch. Default: &#x60;false&#x60;. For more information, see \&quot;[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)\&quot; in the GitHub Help documentation. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

