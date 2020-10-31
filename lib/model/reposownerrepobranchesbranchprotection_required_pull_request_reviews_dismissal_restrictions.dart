part of swagger.api;

class ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions {
  /* The list of user `login`s with dismissal access */
  List<String> users = [];
/* The list of team `slug`s with dismissal access */
  List<String> teams = [];

  ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions();

  @override
  String toString() {
    return 'ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions[users=$users, teams=$teams, ]';
  }

  ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    users = (json['users'] as List).map((item) => item as String).toList();
    teams = (json['teams'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'users': users,
      'teams': teams
     };
  }

  static List<ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions>() : json.map((value) => new ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions.fromJson(value));
    }
    return map;
  }
}
