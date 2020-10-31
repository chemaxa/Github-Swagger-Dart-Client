# swagger.model.Body67

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dismissalRestrictions** | [**ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions**](ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions.md) |  | [optional] [default to null]
**dismissStaleReviews** | **bool** | Set to &#x60;true&#x60; if you want to automatically dismiss approving reviews when someone pushes a new commit. | [optional] [default to null]
**requireCodeOwnerReviews** | **bool** | Blocks merging pull requests until [code owners](https://help.github.com/articles/about-code-owners/) have reviewed. | [optional] [default to null]
**requiredApprovingReviewCount** | **int** | Specifies the number of reviewers required to approve pull requests. Use a number between 1 and 6. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

