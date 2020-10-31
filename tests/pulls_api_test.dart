import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for PullsApi
void main() {
  var instance = new PullsApi();

  group('tests for PullsApi', () {
    // Check if a pull request has been merged
    //
    //Future pullsCheckIfMerged(String owner, String repo, int pullNumber) async
    test('test pullsCheckIfMerged', () async {
      // TODO
    });

    // Create a pull request
    //
    // Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To open or update a pull request in a public repository, you must have write access to the head or the source branch. For organization-owned repositories, you must be a member of the organization that owns the repository to open or update a pull request.  You can create a new pull request.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.
    //
    //Future<PullRequest> pullsCreate(String owner, String repo, { Body121 body }) async
    test('test pullsCreate', () async {
      // TODO
    });

    // Create a reply for a review comment
    //
    // Creates a reply to a review comment for a pull request. For the `comment_id`, provide the ID of the review comment you are replying to. This must be the ID of a _top-level review comment_, not a reply to that comment. Replies to replies are not supported.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.
    //
    //Future<PullRequestReviewComment> pullsCreateReplyForReviewComment(String owner, String repo, int pullNumber, int commentId, { Body126 body }) async
    test('test pullsCreateReplyForReviewComment', () async {
      // TODO
    });

    // Create a review for a pull request
    //
    // This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.  Pull request reviews created in the `PENDING` state do not include the `submitted_at` property in the response.  **Note:** To comment on a specific line in a file, you need to first determine the _position_ of that line in the diff. The GitHub REST API v3 offers the `application/vnd.github.v3.diff` [media type](https://developer.github.com/v3/media/#commits-commit-comparison-and-pull-requests). To see a pull request diff, add this media type to the `Accept` header of a call to the [single pull request](https://developer.github.com/v3/pulls/#get-a-pull-request) endpoint.  The `position` value equals the number of lines down from the first \"@@\" hunk header in the file you want to add a comment. The line just below the \"@@\" line is position 1, the next line is position 2, and so on. The position in the diff continues to increase through lines of whitespace and additional hunks until the beginning of a new file.
    //
    //Future<PullRequestReview> pullsCreateReview(String owner, String repo, int pullNumber, { Body130 body }) async
    test('test pullsCreateReview', () async {
      // TODO
    });

    // Create a review comment for a pull request
    //
    // **Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Creates a review comment in the pull request diff. To add a regular comment to a pull request timeline, see \"[Create an issue comment](https://developer.github.com/v3/issues/comments/#create-an-issue-comment).\" We recommend creating a review comment using `line`, `side`, and optionally `start_line` and `start_side` if your comment applies to more than one line in the pull request diff.  You can still create a review comment using the `position` parameter. When you use `position`, the `line`, `side`, `start_line`, and `start_side` parameters are not required. For more information, see [Multi-line comment summary](https://developer.github.com/v3/pulls/comments/#multi-line-comment-summary-3).  **Note:** The position value equals the number of lines down from the first \"@@\" hunk header in the file you want to add a comment. The line just below the \"@@\" line is position 1, the next line is position 2, and so on. The position in the diff continues to increase through lines of whitespace and additional hunks until the beginning of a new file.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.
    //
    //Future<PullRequestReviewComment> pullsCreateReviewComment(String owner, String repo, int pullNumber, { Body125 body }) async
    test('test pullsCreateReviewComment', () async {
      // TODO
    });

    // Delete a pending review for a pull request
    //
    //Future<PullRequestReview> pullsDeletePendingReview(String owner, String repo, int pullNumber, int reviewId) async
    test('test pullsDeletePendingReview', () async {
      // TODO
    });

    // Delete a review comment for a pull request
    //
    // Deletes a review comment.
    //
    //Future pullsDeleteReviewComment(String owner, String repo, int commentId) async
    test('test pullsDeleteReviewComment', () async {
      // TODO
    });

    // Dismiss a review for a pull request
    //
    // **Note:** To dismiss a pull request review on a [protected branch](https://developer.github.com/v3/repos/branches/), you must be a repository administrator or be included in the list of people or teams who can dismiss pull request reviews.
    //
    //Future<PullRequestReview> pullsDismissReview(String owner, String repo, int pullNumber, int reviewId, { Body132 body }) async
    test('test pullsDismissReview', () async {
      // TODO
    });

    // Get a pull request
    //
    // Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists details of a pull request by providing its number.  When you get, [create](https://developer.github.com/v3/pulls/#create-a-pull-request), or [edit](https://developer.github.com/v3/pulls/#update-a-pull-request) a pull request, GitHub creates a merge commit to test whether the pull request can be automatically merged into the base branch. This test commit is not added to the base branch or the head branch. You can review the status of the test commit using the `mergeable` key. For more information, see \"[Checking mergeability of pull requests](https://developer.github.com/v3/git/#checking-mergeability-of-pull-requests)\".  The value of the `mergeable` attribute can be `true`, `false`, or `null`. If the value is `null`, then GitHub has started a background job to compute the mergeability. After giving the job time to complete, resubmit the request. When the job finishes, you will see a non-`null` value for the `mergeable` attribute in the response. If `mergeable` is `true`, then `merge_commit_sha` will be the SHA of the _test_ merge commit.  The value of the `merge_commit_sha` attribute changes depending on the state of the pull request. Before merging a pull request, the `merge_commit_sha` attribute holds the SHA of the _test_ merge commit. After merging a pull request, the `merge_commit_sha` attribute changes depending on how you merged the pull request:  *   If merged as a [merge commit](https://help.github.com/articles/about-merge-methods-on-github/), `merge_commit_sha` represents the SHA of the merge commit. *   If merged via a [squash](https://help.github.com/articles/about-merge-methods-on-github/#squashing-your-merge-commits), `merge_commit_sha` represents the SHA of the squashed commit on the base branch. *   If [rebased](https://help.github.com/articles/about-merge-methods-on-github/#rebasing-and-merging-your-commits), `merge_commit_sha` represents the commit that the base branch was updated to.  Pass the appropriate [media type](https://developer.github.com/v3/media/#commits-commit-comparison-and-pull-requests) to fetch diff and patch formats.
    //
    //Future<PullRequest> pullsGet(String owner, String repo, int pullNumber) async
    test('test pullsGet', () async {
      // TODO
    });

    // Get a review for a pull request
    //
    //Future<PullRequestReview> pullsGetReview(String owner, String repo, int pullNumber, int reviewId) async
    test('test pullsGetReview', () async {
      // TODO
    });

    // Get a review comment for a pull request
    //
    // **Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Provides details for a review comment.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.  The `reactions` key will have the following payload where `url` can be used to construct the API location for [listing and creating](https://developer.github.com/v3/reactions) reactions.
    //
    //Future<PullRequestReviewComment> pullsGetReviewComment(String owner, String repo, int commentId) async
    test('test pullsGetReviewComment', () async {
      // TODO
    });

    // List pull requests
    //
    // Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future<List<PullRequestSimple>> pullsList(String owner, String repo, { String state, String head, String base, String sort, String direction, int perPage, int page }) async
    test('test pullsList', () async {
      // TODO
    });

    // List comments for a pull request review
    //
    // List comments for a specific pull request review.
    //
    //Future<List<ReviewComment>> pullsListCommentsForReview(String owner, String repo, int pullNumber, int reviewId, { int perPage, int page }) async
    test('test pullsListCommentsForReview', () async {
      // TODO
    });

    // List commits on a pull request
    //
    // Lists a maximum of 250 commits for a pull request. To receive a complete commit list for pull requests with more than 250 commits, use the [List commits](https://developer.github.com/v3/repos/commits/#list-commits) endpoint.
    //
    //Future<List<SimpleCommit>> pullsListCommits(String owner, String repo, int pullNumber, { int perPage, int page }) async
    test('test pullsListCommits', () async {
      // TODO
    });

    // List pull requests files
    //
    // **Note:** Responses include a maximum of 3000 files. The paginated response returns 30 files per page by default.
    //
    //Future<List<DiffEntry>> pullsListFiles(String owner, String repo, int pullNumber, { int perPage, int page }) async
    test('test pullsListFiles', () async {
      // TODO
    });

    // List requested reviewers for a pull request
    //
    //Future<PullRequestReviewRequest> pullsListRequestedReviewers(String owner, String repo, int pullNumber, { int perPage, int page }) async
    test('test pullsListRequestedReviewers', () async {
      // TODO
    });

    // List review comments on a pull request
    //
    // **Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Lists all review comments for a pull request. By default, review comments are in ascending order by ID.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.  The `reactions` key will have the following payload where `url` can be used to construct the API location for [listing and creating](https://developer.github.com/v3/reactions) reactions.
    //
    //Future<List<PullRequestReviewComment>> pullsListReviewComments(String owner, String repo, int pullNumber, { String sort, String direction, String since, int perPage, int page }) async
    test('test pullsListReviewComments', () async {
      // TODO
    });

    // List review comments in a repository
    //
    // **Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Lists review comments for all pull requests in a repository. By default, review comments are in ascending order by ID.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.  The `reactions` key will have the following payload where `url` can be used to construct the API location for [listing and creating](https://developer.github.com/v3/reactions) reactions.
    //
    //Future<List<PullRequestReviewComment>> pullsListReviewCommentsForRepo(String owner, String repo, { String sort, String direction, String since, int perPage, int page }) async
    test('test pullsListReviewCommentsForRepo', () async {
      // TODO
    });

    // List reviews for a pull request
    //
    // The list of reviews returns in chronological order.
    //
    //Future<List<PullRequestReview>> pullsListReviews(String owner, String repo, int pullNumber, { int perPage, int page }) async
    test('test pullsListReviews', () async {
      // TODO
    });

    // Merge a pull request
    //
    // This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.
    //
    //Future<PullRequestMergeResult> pullsMerge(String owner, String repo, int pullNumber, { Body127 body }) async
    test('test pullsMerge', () async {
      // TODO
    });

    // Remove requested reviewers from a pull request
    //
    //Future pullsRemoveRequestedReviewers(String owner, String repo, int pullNumber, { Body129 body }) async
    test('test pullsRemoveRequestedReviewers', () async {
      // TODO
    });

    // Request reviewers for a pull request
    //
    // This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.
    //
    //Future<PullRequestSimple> pullsRequestReviewers(String owner, String repo, int pullNumber, { Body128 body }) async
    test('test pullsRequestReviewers', () async {
      // TODO
    });

    // Submit a review for a pull request
    //
    //Future<PullRequestReview> pullsSubmitReview(String owner, String repo, int pullNumber, int reviewId, { Body133 body }) async
    test('test pullsSubmitReview', () async {
      // TODO
    });

    // Update a pull request
    //
    // Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To open or update a pull request in a public repository, you must have write access to the head or the source branch. For organization-owned repositories, you must be a member of the organization that owns the repository to open or update a pull request.
    //
    //Future<PullRequest> pullsUpdate(String owner, String repo, int pullNumber, { Body124 body }) async
    test('test pullsUpdate', () async {
      // TODO
    });

    // Update a pull request branch
    //
    // Updates the pull request branch with the latest upstream changes by merging HEAD from the base branch into the pull request branch.
    //
    //Future<InlineResponse2021> pullsUpdateBranch(String owner, String repo, int pullNumber, { Body134 body }) async
    test('test pullsUpdateBranch', () async {
      // TODO
    });

    // Update a review for a pull request
    //
    // Update the review summary comment with new text.
    //
    //Future<PullRequestReview> pullsUpdateReview(String owner, String repo, int pullNumber, int reviewId, { Body131 body }) async
    test('test pullsUpdateReview', () async {
      // TODO
    });

    // Update a review comment for a pull request
    //
    // **Note:** Multi-line comments on pull requests are currently in public beta and subject to change.  Enables you to edit a review comment.  **Multi-line comment summary**  **Note:** New parameters and response fields are available for developers to preview. During the preview period, these response fields may change without advance notice. Please see the [blog post](https://developer.github.com/changes/2019-10-03-multi-line-comments) for full details.  Use the `comfort-fade` preview header and the `line` parameter to show multi-line comment-supported fields in the response.  If you use the `comfort-fade` preview header, your response will show:  *   For multi-line comments, values for `start_line`, `original_start_line`, `start_side`, `line`, `original_line`, and `side`. *   For single-line comments, values for `line`, `original_line`, and `side` and a `null` value for `start_line`, `original_start_line`, and `start_side`.  If you don't use the `comfort-fade` preview header, multi-line and single-line comments will appear the same way in the response with a single `position` attribute. Your response will show:  *   For multi-line comments, the last line of the comment range for the `position` attribute. *   For single-line comments, the diff-positioned way of referencing comments for the `position` attribute. For more information, see `position` in the [input parameters](https://developer.github.com/v3/pulls/comments/#parameters-2) table.
    //
    //Future<PullRequestReviewComment> pullsUpdateReviewComment(String owner, String repo, int commentId, { Body122 body }) async
    test('test pullsUpdateReviewComment', () async {
      // TODO
    });

  });
}
