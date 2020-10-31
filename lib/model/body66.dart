part of swagger.api;

class Body66 {
  
  ReposownerrepobranchesbranchprotectionRequiredStatusChecks requiredStatusChecks = null;
/* Enforce all configured restrictions for administrators. Set to `true` to enforce required status checks for repository administrators. Set to `null` to disable. */
  bool enforceAdmins = null;

  ReposownerrepobranchesbranchprotectionRequiredPullRequestReviews requiredPullRequestReviews = null;

  ReposownerrepobranchesbranchprotectionRestrictions restrictions = null;
/* Enforces a linear commit Git history, which prevents anyone from pushing merge commits to a branch. Set to `true` to enforce a linear commit history. Set to `false` to disable a linear commit Git history. Your repository must allow squash merging or rebase merging before you can enable a linear commit history. Default: `false`. For more information, see \"[Requiring a linear commit history](https://help.github.com/github/administering-a-repository/requiring-a-linear-commit-history)\" in the GitHub Help documentation. */
  bool requiredLinearHistory = null;
/* Permits force pushes to the protected branch by anyone with write access to the repository. Set to `true` to allow force pushes. Set to `false` or `null` to block force pushes. Default: `false`. For more information, see \"[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)\" in the GitHub Help documentation.\" */
  bool allowForcePushes = null;
/* Allows deletion of the protected branch by anyone with write access to the repository. Set to `false` to prevent deletion of the protected branch. Default: `false`. For more information, see \"[Enabling force pushes to a protected branch](https://help.github.com/en/github/administering-a-repository/enabling-force-pushes-to-a-protected-branch)\" in the GitHub Help documentation. */
  bool allowDeletions = null;

  Body66();

  @override
  String toString() {
    return 'Body66[requiredStatusChecks=$requiredStatusChecks, enforceAdmins=$enforceAdmins, requiredPullRequestReviews=$requiredPullRequestReviews, restrictions=$restrictions, requiredLinearHistory=$requiredLinearHistory, allowForcePushes=$allowForcePushes, allowDeletions=$allowDeletions, ]';
  }

  Body66.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    requiredStatusChecks = new ReposownerrepobranchesbranchprotectionRequiredStatusChecks.fromJson(json['required_status_checks']);
    enforceAdmins = json['enforce_admins'];
    requiredPullRequestReviews = new ReposownerrepobranchesbranchprotectionRequiredPullRequestReviews.fromJson(json['required_pull_request_reviews']);
    restrictions = new ReposownerrepobranchesbranchprotectionRestrictions.fromJson(json['restrictions']);
    requiredLinearHistory = json['required_linear_history'];
    allowForcePushes = json['allow_force_pushes'];
    allowDeletions = json['allow_deletions'];
  }

  Map<String, dynamic> toJson() {
    return {
      'required_status_checks': requiredStatusChecks,
      'enforce_admins': enforceAdmins,
      'required_pull_request_reviews': requiredPullRequestReviews,
      'restrictions': restrictions,
      'required_linear_history': requiredLinearHistory,
      'allow_force_pushes': allowForcePushes,
      'allow_deletions': allowDeletions
     };
  }

  static List<Body66> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body66>() : json.map((value) => new Body66.fromJson(value)).toList();
  }

  static Map<String, Body66> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body66>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body66.fromJson(value));
    }
    return map;
  }
}
