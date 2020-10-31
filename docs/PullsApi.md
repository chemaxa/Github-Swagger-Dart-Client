# swagger.api.PullsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pullsCheckIfMerged**](PullsApi.md#pullsCheckIfMerged) | **GET** /repos/{owner}/{repo}/pulls/{pull_number}/merge | Check if a pull request has been merged
[**pullsCreate**](PullsApi.md#pullsCreate) | **POST** /repos/{owner}/{repo}/pulls | Create a pull request
[**pullsCreateReplyForReviewComment**](PullsApi.md#pullsCreateReplyForReviewComment) | **POST** /repos/{owner}/{repo}/pulls/{pull_number}/comments/{comment_id}/replies | Create a reply for a review comment
[**pullsCreateReview**](PullsApi.md#pullsCreateReview) | **POST** /repos/{owner}/{repo}/pulls/{pull_number}/reviews | Create a review for a pull request
[**pullsCreateReviewComment**](PullsApi.md#pullsCreateReviewComment) | **POST** /repos/{owner}/{repo}/pulls/{pull_number}/comments | Create a review comment for a pull request
[**pullsDeletePendingReview**](PullsApi.md#pullsDeletePendingReview) | **DELETE** /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id} | Delete a pending review for a pull request
[**pullsDeleteReviewComment**](PullsApi.md#pullsDeleteReviewComment) | **DELETE** /repos/{owner}/{repo}/pulls/comments/{comment_id} | Delete a review comment for a pull request
[**pullsDismissReview**](PullsApi.md#pullsDismissReview) | **PUT** /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/dismissals | Dismiss a review for a pull request
[**pullsGet**](PullsApi.md#pullsGet) | **GET** /repos/{owner}/{repo}/pulls/{pull_number} | Get a pull request
[**pullsGetReview**](PullsApi.md#pullsGetReview) | **GET** /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id} | Get a review for a pull request
[**pullsGetReviewComment**](PullsApi.md#pullsGetReviewComment) | **GET** /repos/{owner}/{repo}/pulls/comments/{comment_id} | Get a review comment for a pull request
[**pullsList**](PullsApi.md#pullsList) | **GET** /repos/{owner}/{repo}/pulls | List pull requests
[**pullsListCommentsForReview**](PullsApi.md#pullsListCommentsForReview) | **GET** /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/comments | List comments for a pull request review
[**pullsListCommits**](PullsApi.md#pullsListCommits) | **GET** /repos/{owner}/{repo}/pulls/{pull_number}/commits | List commits on a pull request
[**pullsListFiles**](PullsApi.md#pullsListFiles) | **GET** /repos/{owner}/{repo}/pulls/{pull_number}/files | List pull requests files
[**pullsListRequestedReviewers**](PullsApi.md#pullsListRequestedReviewers) | **GET** /repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers | List requested reviewers for a pull request
[**pullsListReviewComments**](PullsApi.md#pullsListReviewComments) | **GET** /repos/{owner}/{repo}/pulls/{pull_number}/comments | List review comments on a pull request
[**pullsListReviewCommentsForRepo**](PullsApi.md#pullsListReviewCommentsForRepo) | **GET** /repos/{owner}/{repo}/pulls/comments | List review comments in a repository
[**pullsListReviews**](PullsApi.md#pullsListReviews) | **GET** /repos/{owner}/{repo}/pulls/{pull_number}/reviews | List reviews for a pull request
[**pullsMerge**](PullsApi.md#pullsMerge) | **PUT** /repos/{owner}/{repo}/pulls/{pull_number}/merge | Merge a pull request
[**pullsRemoveRequestedReviewers**](PullsApi.md#pullsRemoveRequestedReviewers) | **DELETE** /repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers | Remove requested reviewers from a pull request
[**pullsRequestReviewers**](PullsApi.md#pullsRequestReviewers) | **POST** /repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers | Request reviewers for a pull request
[**pullsSubmitReview**](PullsApi.md#pullsSubmitReview) | **POST** /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/events | Submit a review for a pull request
[**pullsUpdate**](PullsApi.md#pullsUpdate) | **PATCH** /repos/{owner}/{repo}/pulls/{pull_number} | Update a pull request
[**pullsUpdateBranch**](PullsApi.md#pullsUpdateBranch) | **PUT** /repos/{owner}/{repo}/pulls/{pull_number}/update-branch | Update a pull request branch
[**pullsUpdateReview**](PullsApi.md#pullsUpdateReview) | **PUT** /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id} | Update a review for a pull request
[**pullsUpdateReviewComment**](PullsApi.md#pullsUpdateReviewComment) | **PATCH** /repos/{owner}/{repo}/pulls/comments/{comment_id} | Update a review comment for a pull request

# **pullsCheckIfMerged**
> pullsCheckIfMerged(owner, repo, pullNumber)

Check if a pull request has been merged

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 

try {
    api_instance.pullsCheckIfMerged(owner, repo, pullNumber);
} catch (e) {
    print("Exception when calling PullsApi->pullsCheckIfMerged: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsCreate**
> PullRequest pullsCreate(owner, repo, body)

Create a pull request

Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To open or update a pull request in a public repository, you must have write access to the head or the source branch. For organization-owned repositories, you must be a member of the organization that owns the repository to open or update a pull request.  You can create a new pull request.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body121(); // Body121 | 

try {
    var result = api_instance.pullsCreate(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body121**](Body121.md)|  | [optional] 

### Return type

[**PullRequest**](PullRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsCreateReplyForReviewComment**
> PullRequestReviewComment pullsCreateReplyForReviewComment(owner, repo, pullNumber, commentId, body)

Create a reply for a review comment

Creates a reply to a review comment for a pull request. For the `comment_id`, provide the ID of the review comment you are replying to. This must be the ID of a _top-level review comment_, not a reply to that comment. Replies to replies are not supported.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var commentId = 56; // int | comment_id parameter
var body = new Body126(); // Body126 | 

try {
    var result = api_instance.pullsCreateReplyForReviewComment(owner, repo, pullNumber, commentId, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsCreateReplyForReviewComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **commentId** | **int**| comment_id parameter | 
 **body** | [**Body126**](Body126.md)|  | [optional] 

### Return type

[**PullRequestReviewComment**](PullRequestReviewComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsCreateReview**
> PullRequestReview pullsCreateReview(owner, repo, pullNumber, body)

Create a review for a pull request

This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.  Pull request reviews created in the `PENDING` state do not include the `submitted_at` property in the response.  **Note:** To comment on a specific line in a file, you need to first determine the _position_ of that line in the diff. The GitHub REST API v3 offers the `application/vnd.github.v3.diff` [media type](https://developer.github.com/v3/media/#commits-commit-comparison-and-pull-requests). To see a pull request diff, add this media type to the `Accept` header of a call to the [single pull request](https://developer.github.com/v3/pulls/#get-a-pull-request) endpoint.  The `position` value equals the number of lines down from the first \"@@\" hunk header in the file you want to add a comment. The line just below the \"@@\" line is position 1, the next line is position 2, and so on. The position in the diff continues to increase through lines of whitespace and additional hunks until the beginning of a new file.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var body = new Body130(); // Body130 | 

try {
    var result = api_instance.pullsCreateReview(owner, repo, pullNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsCreateReview: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **body** | [**Body130**](Body130.md)|  | [optional] 

### Return type

[**PullRequestReview**](PullRequestReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsCreateReviewComment**
> PullRequestReviewComment pullsCreateReviewComment(owner, repo, pullNumber, body)

Create a review comment for a pull request

**Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Creates a review comment in the pull request diff. To add a regular comment to a pull request timeline, see \"[Create an issue comment](https://developer.github.com/v3/issues/comments/#create-an-issue-comment).\" We recommend creating a review comment using `line`, `side`, and optionally `start_line` and `start_side` if your comment applies to more than one line in the pull request diff.  You can still create a review comment using the `position` parameter. When you use `position`, the `line`, `side`, `start_line`, and `start_side` parameters are not required. For more information, see [Multi-line comment summary](https://developer.github.com/v3/pulls/comments/#multi-line-comment-summary-3).  **Note:** The position value equals the number of lines down from the first \"@@\" hunk header in the file you want to add a comment. The line just below the \"@@\" line is position 1, the next line is position 2, and so on. The position in the diff continues to increase through lines of whitespace and additional hunks until the beginning of a new file.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var body = new Body125(); // Body125 | 

try {
    var result = api_instance.pullsCreateReviewComment(owner, repo, pullNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsCreateReviewComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **body** | [**Body125**](Body125.md)|  | [optional] 

### Return type

[**PullRequestReviewComment**](PullRequestReviewComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsDeletePendingReview**
> PullRequestReview pullsDeletePendingReview(owner, repo, pullNumber, reviewId)

Delete a pending review for a pull request

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var reviewId = 56; // int | review_id parameter

try {
    var result = api_instance.pullsDeletePendingReview(owner, repo, pullNumber, reviewId);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsDeletePendingReview: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **reviewId** | **int**| review_id parameter | 

### Return type

[**PullRequestReview**](PullRequestReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsDeleteReviewComment**
> pullsDeleteReviewComment(owner, repo, commentId)

Delete a review comment for a pull request

Deletes a review comment.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter

try {
    api_instance.pullsDeleteReviewComment(owner, repo, commentId);
} catch (e) {
    print("Exception when calling PullsApi->pullsDeleteReviewComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsDismissReview**
> PullRequestReview pullsDismissReview(owner, repo, pullNumber, reviewId, body)

Dismiss a review for a pull request

**Note:** To dismiss a pull request review on a [protected branch](https://developer.github.com/v3/repos/branches/), you must be a repository administrator or be included in the list of people or teams who can dismiss pull request reviews.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var reviewId = 56; // int | review_id parameter
var body = new Body132(); // Body132 | 

try {
    var result = api_instance.pullsDismissReview(owner, repo, pullNumber, reviewId, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsDismissReview: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **reviewId** | **int**| review_id parameter | 
 **body** | [**Body132**](Body132.md)|  | [optional] 

### Return type

[**PullRequestReview**](PullRequestReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsGet**
> PullRequest pullsGet(owner, repo, pullNumber)

Get a pull request

Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists details of a pull request by providing its number.  When you get, [create](https://developer.github.com/v3/pulls/#create-a-pull-request), or [edit](https://developer.github.com/v3/pulls/#update-a-pull-request) a pull request, GitHub creates a merge commit to test whether the pull request can be automatically merged into the base branch. This test commit is not added to the base branch or the head branch. You can review the status of the test commit using the `mergeable` key. For more information, see \"[Checking mergeability of pull requests](https://developer.github.com/v3/git/#checking-mergeability-of-pull-requests)\".  The value of the `mergeable` attribute can be `true`, `false`, or `null`. If the value is `null`, then GitHub has started a background job to compute the mergeability. After giving the job time to complete, resubmit the request. When the job finishes, you will see a non-`null` value for the `mergeable` attribute in the response. If `mergeable` is `true`, then `merge_commit_sha` will be the SHA of the _test_ merge commit.  The value of the `merge_commit_sha` attribute changes depending on the state of the pull request. Before merging a pull request, the `merge_commit_sha` attribute holds the SHA of the _test_ merge commit. After merging a pull request, the `merge_commit_sha` attribute changes depending on how you merged the pull request:  *   If merged as a [merge commit](https://help.github.com/articles/about-merge-methods-on-github/), `merge_commit_sha` represents the SHA of the merge commit. *   If merged via a [squash](https://help.github.com/articles/about-merge-methods-on-github/#squashing-your-merge-commits), `merge_commit_sha` represents the SHA of the squashed commit on the base branch. *   If [rebased](https://help.github.com/articles/about-merge-methods-on-github/#rebasing-and-merging-your-commits), `merge_commit_sha` represents the commit that the base branch was updated to.  Pass the appropriate [media type](https://developer.github.com/v3/media/#commits-commit-comparison-and-pull-requests) to fetch diff and patch formats.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 

try {
    var result = api_instance.pullsGet(owner, repo, pullNumber);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 

### Return type

[**PullRequest**](PullRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsGetReview**
> PullRequestReview pullsGetReview(owner, repo, pullNumber, reviewId)

Get a review for a pull request

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var reviewId = 56; // int | review_id parameter

try {
    var result = api_instance.pullsGetReview(owner, repo, pullNumber, reviewId);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsGetReview: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **reviewId** | **int**| review_id parameter | 

### Return type

[**PullRequestReview**](PullRequestReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsGetReviewComment**
> PullRequestReviewComment pullsGetReviewComment(owner, repo, commentId)

Get a review comment for a pull request

**Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Provides details for a review comment.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.  The `reactions` key will have the following payload where `url` can be used to construct the API location for [listing and creating](https://developer.github.com/v3/reactions) reactions.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter

try {
    var result = api_instance.pullsGetReviewComment(owner, repo, commentId);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsGetReviewComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 

### Return type

[**PullRequestReviewComment**](PullRequestReviewComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsList**
> List<PullRequestSimple> pullsList(owner, repo, state, head, base, sort, direction, perPage, page)

List pull requests

Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var state = state_example; // String | Either `open`, `closed`, or `all` to filter by state.
var head = head_example; // String | Filter pulls by head user or head organization and branch name in the format of `user:ref-name` or `organization:ref-name`. For example: `github:new-script-format` or `octocat:test-branch`.
var base = base_example; // String | Filter pulls by base branch name. Example: `gh-pages`.
var sort = sort_example; // String | What to sort results by. Can be either `created`, `updated`, `popularity` (comment count) or `long-running` (age, filtering by pulls updated in the last month).
var direction = direction_example; // String | The direction of the sort. Can be either `asc` or `desc`. Default: `desc` when sort is `created` or sort is not specified, otherwise `asc`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.pullsList(owner, repo, state, head, base, sort, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **state** | **String**| Either &#x60;open&#x60;, &#x60;closed&#x60;, or &#x60;all&#x60; to filter by state. | [optional] [default to open]
 **head** | **String**| Filter pulls by head user or head organization and branch name in the format of &#x60;user:ref-name&#x60; or &#x60;organization:ref-name&#x60;. For example: &#x60;github:new-script-format&#x60; or &#x60;octocat:test-branch&#x60;. | [optional] 
 **base** | **String**| Filter pulls by base branch name. Example: &#x60;gh-pages&#x60;. | [optional] 
 **sort** | **String**| What to sort results by. Can be either &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;popularity&#x60; (comment count) or &#x60;long-running&#x60; (age, filtering by pulls updated in the last month). | [optional] [default to created]
 **direction** | **String**| The direction of the sort. Can be either &#x60;asc&#x60; or &#x60;desc&#x60;. Default: &#x60;desc&#x60; when sort is &#x60;created&#x60; or sort is not specified, otherwise &#x60;asc&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<PullRequestSimple>**](PullRequestSimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsListCommentsForReview**
> List<ReviewComment> pullsListCommentsForReview(owner, repo, pullNumber, reviewId, perPage, page)

List comments for a pull request review

List comments for a specific pull request review.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var reviewId = 56; // int | review_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.pullsListCommentsForReview(owner, repo, pullNumber, reviewId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsListCommentsForReview: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **reviewId** | **int**| review_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<ReviewComment>**](ReviewComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsListCommits**
> List<SimpleCommit> pullsListCommits(owner, repo, pullNumber, perPage, page)

List commits on a pull request

Lists a maximum of 250 commits for a pull request. To receive a complete commit list for pull requests with more than 250 commits, use the [List commits](https://developer.github.com/v3/repos/commits/#list-commits) endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.pullsListCommits(owner, repo, pullNumber, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsListCommits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<SimpleCommit>**](SimpleCommit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsListFiles**
> List<DiffEntry> pullsListFiles(owner, repo, pullNumber, perPage, page)

List pull requests files

**Note:** Responses include a maximum of 3000 files. The paginated response returns 30 files per page by default.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.pullsListFiles(owner, repo, pullNumber, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsListFiles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<DiffEntry>**](DiffEntry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsListRequestedReviewers**
> PullRequestReviewRequest pullsListRequestedReviewers(owner, repo, pullNumber, perPage, page)

List requested reviewers for a pull request

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.pullsListRequestedReviewers(owner, repo, pullNumber, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsListRequestedReviewers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**PullRequestReviewRequest**](PullRequestReviewRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsListReviewComments**
> List<PullRequestReviewComment> pullsListReviewComments(owner, repo, pullNumber, sort, direction, since, perPage, page)

List review comments on a pull request

**Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Lists all review comments for a pull request. By default, review comments are in ascending order by ID.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.  The `reactions` key will have the following payload where `url` can be used to construct the API location for [listing and creating](https://developer.github.com/v3/reactions) reactions.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var sort = sort_example; // String | One of `created` (when the repository was starred) or `updated` (when it was last pushed to).
var direction = direction_example; // String | Can be either `asc` or `desc`. Ignored without `sort` parameter.
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.pullsListReviewComments(owner, repo, pullNumber, sort, direction, since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsListReviewComments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **sort** | **String**| One of &#x60;created&#x60; (when the repository was starred) or &#x60;updated&#x60; (when it was last pushed to). | [optional] [default to created]
 **direction** | **String**| Can be either &#x60;asc&#x60; or &#x60;desc&#x60;. Ignored without &#x60;sort&#x60; parameter. | [optional] 
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<PullRequestReviewComment>**](PullRequestReviewComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsListReviewCommentsForRepo**
> List<PullRequestReviewComment> pullsListReviewCommentsForRepo(owner, repo, sort, direction, since, perPage, page)

List review comments in a repository

**Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Lists review comments for all pull requests in a repository. By default, review comments are in ascending order by ID.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.  The `reactions` key will have the following payload where `url` can be used to construct the API location for [listing and creating](https://developer.github.com/v3/reactions) reactions.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var sort = sort_example; // String | One of `created` (when the repository was starred) or `updated` (when it was last pushed to).
var direction = direction_example; // String | Can be either `asc` or `desc`. Ignored without `sort` parameter.
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.pullsListReviewCommentsForRepo(owner, repo, sort, direction, since, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsListReviewCommentsForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **sort** | **String**| One of &#x60;created&#x60; (when the repository was starred) or &#x60;updated&#x60; (when it was last pushed to). | [optional] [default to created]
 **direction** | **String**| Can be either &#x60;asc&#x60; or &#x60;desc&#x60;. Ignored without &#x60;sort&#x60; parameter. | [optional] 
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<PullRequestReviewComment>**](PullRequestReviewComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsListReviews**
> List<PullRequestReview> pullsListReviews(owner, repo, pullNumber, perPage, page)

List reviews for a pull request

The list of reviews returns in chronological order.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.pullsListReviews(owner, repo, pullNumber, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsListReviews: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<PullRequestReview>**](PullRequestReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsMerge**
> PullRequestMergeResult pullsMerge(owner, repo, pullNumber, body)

Merge a pull request

This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var body = new Body127(); // Body127 | 

try {
    var result = api_instance.pullsMerge(owner, repo, pullNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsMerge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **body** | [**Body127**](Body127.md)|  | [optional] 

### Return type

[**PullRequestMergeResult**](PullRequestMergeResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsRemoveRequestedReviewers**
> pullsRemoveRequestedReviewers(owner, repo, pullNumber, body)

Remove requested reviewers from a pull request

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var body = new Body129(); // Body129 | 

try {
    api_instance.pullsRemoveRequestedReviewers(owner, repo, pullNumber, body);
} catch (e) {
    print("Exception when calling PullsApi->pullsRemoveRequestedReviewers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **body** | [**Body129**](Body129.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsRequestReviewers**
> PullRequestSimple pullsRequestReviewers(owner, repo, pullNumber, body)

Request reviewers for a pull request

This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var body = new Body128(); // Body128 | 

try {
    var result = api_instance.pullsRequestReviewers(owner, repo, pullNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsRequestReviewers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **body** | [**Body128**](Body128.md)|  | [optional] 

### Return type

[**PullRequestSimple**](PullRequestSimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsSubmitReview**
> PullRequestReview pullsSubmitReview(owner, repo, pullNumber, reviewId, body)

Submit a review for a pull request

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var reviewId = 56; // int | review_id parameter
var body = new Body133(); // Body133 | 

try {
    var result = api_instance.pullsSubmitReview(owner, repo, pullNumber, reviewId, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsSubmitReview: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **reviewId** | **int**| review_id parameter | 
 **body** | [**Body133**](Body133.md)|  | [optional] 

### Return type

[**PullRequestReview**](PullRequestReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsUpdate**
> PullRequest pullsUpdate(owner, repo, pullNumber, body)

Update a pull request

Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To open or update a pull request in a public repository, you must have write access to the head or the source branch. For organization-owned repositories, you must be a member of the organization that owns the repository to open or update a pull request.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var body = new Body124(); // Body124 | 

try {
    var result = api_instance.pullsUpdate(owner, repo, pullNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **body** | [**Body124**](Body124.md)|  | [optional] 

### Return type

[**PullRequest**](PullRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsUpdateBranch**
> InlineResponse2021 pullsUpdateBranch(owner, repo, pullNumber, body)

Update a pull request branch

Updates the pull request branch with the latest upstream changes by merging HEAD from the base branch into the pull request branch.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var body = new Body134(); // Body134 | 

try {
    var result = api_instance.pullsUpdateBranch(owner, repo, pullNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsUpdateBranch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **body** | [**Body134**](Body134.md)|  | [optional] 

### Return type

[**InlineResponse2021**](InlineResponse2021.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsUpdateReview**
> PullRequestReview pullsUpdateReview(owner, repo, pullNumber, reviewId, body)

Update a review for a pull request

Update the review summary comment with new text.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var pullNumber = 56; // int | 
var reviewId = 56; // int | review_id parameter
var body = new Body131(); // Body131 | 

try {
    var result = api_instance.pullsUpdateReview(owner, repo, pullNumber, reviewId, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsUpdateReview: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **pullNumber** | **int**|  | 
 **reviewId** | **int**| review_id parameter | 
 **body** | [**Body131**](Body131.md)|  | [optional] 

### Return type

[**PullRequestReview**](PullRequestReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pullsUpdateReviewComment**
> PullRequestReviewComment pullsUpdateReviewComment(owner, repo, commentId, body)

Update a review comment for a pull request

**Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Enables you to edit a review comment.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PullsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var body = new Body122(); // Body122 | 

try {
    var result = api_instance.pullsUpdateReviewComment(owner, repo, commentId, body);
    print(result);
} catch (e) {
    print("Exception when calling PullsApi->pullsUpdateReviewComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **body** | [**Body122**](Body122.md)|  | [optional] 

### Return type

[**PullRequestReviewComment**](PullRequestReviewComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

