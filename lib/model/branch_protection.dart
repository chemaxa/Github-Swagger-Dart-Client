part of swagger.api;

class BranchProtection {
  
  String url = null;

  BranchprotectionRequiredStatusChecks requiredStatusChecks = null;

  ProtectedBranchAdminEnforced enforceAdmins = null;

  ProtectedBranchPullRequestReview requiredPullRequestReviews = null;

  BranchRestrictionPolicy restrictions = null;

  BranchprotectionRequiredLinearHistory requiredLinearHistory = null;

  BranchprotectionRequiredLinearHistory allowForcePushes = null;

  BranchprotectionRequiredLinearHistory allowDeletions = null;

  bool enabled = null;

  String name = null;

  String protectionUrl = null;

  BranchProtection();

  @override
  String toString() {
    return 'BranchProtection[url=$url, requiredStatusChecks=$requiredStatusChecks, enforceAdmins=$enforceAdmins, requiredPullRequestReviews=$requiredPullRequestReviews, restrictions=$restrictions, requiredLinearHistory=$requiredLinearHistory, allowForcePushes=$allowForcePushes, allowDeletions=$allowDeletions, enabled=$enabled, name=$name, protectionUrl=$protectionUrl, ]';
  }

  BranchProtection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    requiredStatusChecks = new BranchprotectionRequiredStatusChecks.fromJson(json['required_status_checks']);
    enforceAdmins = new ProtectedBranchAdminEnforced.fromJson(json['enforce_admins']);
    requiredPullRequestReviews = new ProtectedBranchPullRequestReview.fromJson(json['required_pull_request_reviews']);
    restrictions = new BranchRestrictionPolicy.fromJson(json['restrictions']);
    requiredLinearHistory = new BranchprotectionRequiredLinearHistory.fromJson(json['required_linear_history']);
    allowForcePushes = new BranchprotectionRequiredLinearHistory.fromJson(json['allow_force_pushes']);
    allowDeletions = new BranchprotectionRequiredLinearHistory.fromJson(json['allow_deletions']);
    enabled = json['enabled'];
    name = json['name'];
    protectionUrl = json['protection_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'required_status_checks': requiredStatusChecks,
      'enforce_admins': enforceAdmins,
      'required_pull_request_reviews': requiredPullRequestReviews,
      'restrictions': restrictions,
      'required_linear_history': requiredLinearHistory,
      'allow_force_pushes': allowForcePushes,
      'allow_deletions': allowDeletions,
      'enabled': enabled,
      'name': name,
      'protection_url': protectionUrl
     };
  }

  static List<BranchProtection> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchProtection>() : json.map((value) => new BranchProtection.fromJson(value)).toList();
  }

  static Map<String, BranchProtection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchProtection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchProtection.fromJson(value));
    }
    return map;
  }
}
