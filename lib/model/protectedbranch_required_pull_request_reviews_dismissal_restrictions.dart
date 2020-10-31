part of swagger.api;

class ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions {
  
  String url = null;

  String usersUrl = null;

  String teamsUrl = null;

  List<SimpleUser> users = [];

  List<Team> teams = [];

  ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions();

  @override
  String toString() {
    return 'ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions[url=$url, usersUrl=$usersUrl, teamsUrl=$teamsUrl, users=$users, teams=$teams, ]';
  }

  ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    usersUrl = json['users_url'];
    teamsUrl = json['teams_url'];
    users = SimpleUser.listFromJson(json['users']);
    teams = Team.listFromJson(json['teams']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'users_url': usersUrl,
      'teams_url': teamsUrl,
      'users': users,
      'teams': teams
     };
  }

  static List<ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions>() : json.map((value) => new ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions.fromJson(value)).toList();
  }

  static Map<String, ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions.fromJson(value));
    }
    return map;
  }
}
