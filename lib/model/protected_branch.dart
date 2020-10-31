part of swagger.api;

class ProtectedBranch {
  
  String url = null;

  StatusCheckPolicy requiredStatusChecks = null;

  ProtectedbranchRequiredPullRequestReviews requiredPullRequestReviews = null;

  ProtectedbranchRequiredSignatures requiredSignatures = null;

  ProtectedbranchEnforceAdmins enforceAdmins = null;

  ProtectedbranchRequiredLinearHistory requiredLinearHistory = null;

  ProtectedbranchRequiredLinearHistory allowForcePushes = null;

  ProtectedbranchRequiredLinearHistory allowDeletions = null;

  BranchRestrictionPolicy restrictions = null;

  ProtectedBranch();

  @override
  String toString() {
    return 'ProtectedBranch[url=$url, requiredStatusChecks=$requiredStatusChecks, requiredPullRequestReviews=$requiredPullRequestReviews, requiredSignatures=$requiredSignatures, enforceAdmins=$enforceAdmins, requiredLinearHistory=$requiredLinearHistory, allowForcePushes=$allowForcePushes, allowDeletions=$allowDeletions, restrictions=$restrictions, ]';
  }

  ProtectedBranch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    requiredStatusChecks = new StatusCheckPolicy.fromJson(json['required_status_checks']);
    requiredPullRequestReviews = new ProtectedbranchRequiredPullRequestReviews.fromJson(json['required_pull_request_reviews']);
    requiredSignatures = new ProtectedbranchRequiredSignatures.fromJson(json['required_signatures']);
    enforceAdmins = new ProtectedbranchEnforceAdmins.fromJson(json['enforce_admins']);
    requiredLinearHistory = new ProtectedbranchRequiredLinearHistory.fromJson(json['required_linear_history']);
    allowForcePushes = new ProtectedbranchRequiredLinearHistory.fromJson(json['allow_force_pushes']);
    allowDeletions = new ProtectedbranchRequiredLinearHistory.fromJson(json['allow_deletions']);
    restrictions = new BranchRestrictionPolicy.fromJson(json['restrictions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'required_status_checks': requiredStatusChecks,
      'required_pull_request_reviews': requiredPullRequestReviews,
      'required_signatures': requiredSignatures,
      'enforce_admins': enforceAdmins,
      'required_linear_history': requiredLinearHistory,
      'allow_force_pushes': allowForcePushes,
      'allow_deletions': allowDeletions,
      'restrictions': restrictions
     };
  }

  static List<ProtectedBranch> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtectedBranch>() : json.map((value) => new ProtectedBranch.fromJson(value)).toList();
  }

  static Map<String, ProtectedBranch> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtectedBranch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProtectedBranch.fromJson(value));
    }
    return map;
  }
}
