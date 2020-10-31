part of swagger.api;

class ProtectedbranchpullrequestreviewDismissalRestrictions {
  /* The list of users with review dismissal access. */
  List<SimpleUser> users = [];
/* The list of teams with review dismissal access. */
  List<Team> teams = [];

  String url = null;

  String usersUrl = null;

  String teamsUrl = null;

  ProtectedbranchpullrequestreviewDismissalRestrictions();

  @override
  String toString() {
    return 'ProtectedbranchpullrequestreviewDismissalRestrictions[users=$users, teams=$teams, url=$url, usersUrl=$usersUrl, teamsUrl=$teamsUrl, ]';
  }

  ProtectedbranchpullrequestreviewDismissalRestrictions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    users = SimpleUser.listFromJson(json['users']);
    teams = Team.listFromJson(json['teams']);
    url = json['url'];
    usersUrl = json['users_url'];
    teamsUrl = json['teams_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'users': users,
      'teams': teams,
      'url': url,
      'users_url': usersUrl,
      'teams_url': teamsUrl
     };
  }

  static List<ProtectedbranchpullrequestreviewDismissalRestrictions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtectedbranchpullrequestreviewDismissalRestrictions>() : json.map((value) => new ProtectedbranchpullrequestreviewDismissalRestrictions.fromJson(value)).toList();
  }

  static Map<String, ProtectedbranchpullrequestreviewDismissalRestrictions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtectedbranchpullrequestreviewDismissalRestrictions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProtectedbranchpullrequestreviewDismissalRestrictions.fromJson(value));
    }
    return map;
  }
}
