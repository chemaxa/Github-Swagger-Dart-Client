part of swagger.api;

class ProtectedBranchPullRequestReview {
  
  String url = null;

  ProtectedbranchpullrequestreviewDismissalRestrictions dismissalRestrictions = null;

  bool dismissStaleReviews = null;

  bool requireCodeOwnerReviews = null;

  int requiredApprovingReviewCount = null;
   // range from 1 to 6//

  ProtectedBranchPullRequestReview();

  @override
  String toString() {
    return 'ProtectedBranchPullRequestReview[url=$url, dismissalRestrictions=$dismissalRestrictions, dismissStaleReviews=$dismissStaleReviews, requireCodeOwnerReviews=$requireCodeOwnerReviews, requiredApprovingReviewCount=$requiredApprovingReviewCount, ]';
  }

  ProtectedBranchPullRequestReview.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    dismissalRestrictions = new ProtectedbranchpullrequestreviewDismissalRestrictions.fromJson(json['dismissal_restrictions']);
    dismissStaleReviews = json['dismiss_stale_reviews'];
    requireCodeOwnerReviews = json['require_code_owner_reviews'];
    requiredApprovingReviewCount = json['required_approving_review_count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'dismissal_restrictions': dismissalRestrictions,
      'dismiss_stale_reviews': dismissStaleReviews,
      'require_code_owner_reviews': requireCodeOwnerReviews,
      'required_approving_review_count': requiredApprovingReviewCount
     };
  }

  static List<ProtectedBranchPullRequestReview> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtectedBranchPullRequestReview>() : json.map((value) => new ProtectedBranchPullRequestReview.fromJson(value)).toList();
  }

  static Map<String, ProtectedBranchPullRequestReview> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtectedBranchPullRequestReview>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProtectedBranchPullRequestReview.fromJson(value));
    }
    return map;
  }
}
