part of swagger.api;

class ReposownerrepobranchesbranchprotectionRestrictions {
  /* The list of user `login`s with push access */
  List<String> users = [];
/* The list of team `slug`s with push access */
  List<String> teams = [];
/* The list of app `slug`s with push access */
  List<String> apps = [];

  ReposownerrepobranchesbranchprotectionRestrictions();

  @override
  String toString() {
    return 'ReposownerrepobranchesbranchprotectionRestrictions[users=$users, teams=$teams, apps=$apps, ]';
  }

  ReposownerrepobranchesbranchprotectionRestrictions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    users = (json['users'] as List).map((item) => item as String).toList();
    teams = (json['teams'] as List).map((item) => item as String).toList();
    apps = (json['apps'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'users': users,
      'teams': teams,
      'apps': apps
     };
  }

  static List<ReposownerrepobranchesbranchprotectionRestrictions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepobranchesbranchprotectionRestrictions>() : json.map((value) => new ReposownerrepobranchesbranchprotectionRestrictions.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepobranchesbranchprotectionRestrictions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepobranchesbranchprotectionRestrictions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepobranchesbranchprotectionRestrictions.fromJson(value));
    }
    return map;
  }
}
