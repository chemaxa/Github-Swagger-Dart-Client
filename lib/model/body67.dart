part of swagger.api;

class Body67 {
  
  ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions dismissalRestrictions = null;
/* Set to `true` if you want to automatically dismiss approving reviews when someone pushes a new commit. */
  bool dismissStaleReviews = null;
/* Blocks merging pull requests until [code owners](https://help.github.com/articles/about-code-owners/) have reviewed. */
  bool requireCodeOwnerReviews = null;
/* Specifies the number of reviewers required to approve pull requests. Use a number between 1 and 6. */
  int requiredApprovingReviewCount = null;

  Body67();

  @override
  String toString() {
    return 'Body67[dismissalRestrictions=$dismissalRestrictions, dismissStaleReviews=$dismissStaleReviews, requireCodeOwnerReviews=$requireCodeOwnerReviews, requiredApprovingReviewCount=$requiredApprovingReviewCount, ]';
  }

  Body67.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dismissalRestrictions = new ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions.fromJson(json['dismissal_restrictions']);
    dismissStaleReviews = json['dismiss_stale_reviews'];
    requireCodeOwnerReviews = json['require_code_owner_reviews'];
    requiredApprovingReviewCount = json['required_approving_review_count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'dismissal_restrictions': dismissalRestrictions,
      'dismiss_stale_reviews': dismissStaleReviews,
      'require_code_owner_reviews': requireCodeOwnerReviews,
      'required_approving_review_count': requiredApprovingReviewCount
     };
  }

  static List<Body67> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body67>() : json.map((value) => new Body67.fromJson(value)).toList();
  }

  static Map<String, Body67> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body67>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body67.fromJson(value));
    }
    return map;
  }
}
