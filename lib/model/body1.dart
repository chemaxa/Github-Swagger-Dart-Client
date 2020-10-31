part of swagger.api;

class Body1 {
  /* List of repository names that the token should have access to */
  List<String> repositories = [];
/* List of repository IDs that the token should have access to */
  List<int> repositoryIds = [];

  AppinstallationsinstallationIdaccessTokensPermissions permissions = null;

  Body1();

  @override
  String toString() {
    return 'Body1[repositories=$repositories, repositoryIds=$repositoryIds, permissions=$permissions, ]';
  }

  Body1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    repositories = (json['repositories'] as List).map((item) => item as String).toList();
    repositoryIds = (json['repository_ids'] as List).map((item) => item as int).toList();
    permissions = new AppinstallationsinstallationIdaccessTokensPermissions.fromJson(json['permissions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'repositories': repositories,
      'repository_ids': repositoryIds,
      'permissions': permissions
     };
  }

  static List<Body1> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body1>() : json.map((value) => new Body1.fromJson(value)).toList();
  }

  static Map<String, Body1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body1.fromJson(value));
    }
    return map;
  }
}
