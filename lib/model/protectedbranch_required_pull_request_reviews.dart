part of swagger.api;

class ProtectedbranchRequiredPullRequestReviews {
  
  String url = null;

  bool dismissStaleReviews = null;

  bool requireCodeOwnerReviews = null;

  int requiredApprovingReviewCount = null;

  ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions dismissalRestrictions = null;

  ProtectedbranchRequiredPullRequestReviews();

  @override
  String toString() {
    return 'ProtectedbranchRequiredPullRequestReviews[url=$url, dismissStaleReviews=$dismissStaleReviews, requireCodeOwnerReviews=$requireCodeOwnerReviews, requiredApprovingReviewCount=$requiredApprovingReviewCount, dismissalRestrictions=$dismissalRestrictions, ]';
  }

  ProtectedbranchRequiredPullRequestReviews.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    dismissStaleReviews = json['dismiss_stale_reviews'];
    requireCodeOwnerReviews = json['require_code_owner_reviews'];
    requiredApprovingReviewCount = json['required_approving_review_count'];
    dismissalRestrictions = new ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions.fromJson(json['dismissal_restrictions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'dismiss_stale_reviews': dismissStaleReviews,
      'require_code_owner_reviews': requireCodeOwnerReviews,
      'required_approving_review_count': requiredApprovingReviewCount,
      'dismissal_restrictions': dismissalRestrictions
     };
  }

  static List<ProtectedbranchRequiredPullRequestReviews> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtectedbranchRequiredPullRequestReviews>() : json.map((value) => new ProtectedbranchRequiredPullRequestReviews.fromJson(value)).toList();
  }

  static Map<String, ProtectedbranchRequiredPullRequestReviews> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtectedbranchRequiredPullRequestReviews>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProtectedbranchRequiredPullRequestReviews.fromJson(value));
    }
    return map;
  }
}
