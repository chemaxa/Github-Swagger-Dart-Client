part of swagger.api;

class BranchRestrictionPolicy {
  
  String url = null;

  String usersUrl = null;

  String teamsUrl = null;

  String appsUrl = null;

  List<RepositoryTemplateRepositoryOwner> users = [];

  List<BranchrestrictionpolicyTeams> teams = [];

  List<BranchrestrictionpolicyApps> apps = [];

  BranchRestrictionPolicy();

  @override
  String toString() {
    return 'BranchRestrictionPolicy[url=$url, usersUrl=$usersUrl, teamsUrl=$teamsUrl, appsUrl=$appsUrl, users=$users, teams=$teams, apps=$apps, ]';
  }

  BranchRestrictionPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    usersUrl = json['users_url'];
    teamsUrl = json['teams_url'];
    appsUrl = json['apps_url'];
    users = RepositoryTemplateRepositoryOwner.listFromJson(json['users']);
    teams = BranchrestrictionpolicyTeams.listFromJson(json['teams']);
    apps = BranchrestrictionpolicyApps.listFromJson(json['apps']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'users_url': usersUrl,
      'teams_url': teamsUrl,
      'apps_url': appsUrl,
      'users': users,
      'teams': teams,
      'apps': apps
     };
  }

  static List<BranchRestrictionPolicy> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchRestrictionPolicy>() : json.map((value) => new BranchRestrictionPolicy.fromJson(value)).toList();
  }

  static Map<String, BranchRestrictionPolicy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchRestrictionPolicy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchRestrictionPolicy.fromJson(value));
    }
    return map;
  }
}
