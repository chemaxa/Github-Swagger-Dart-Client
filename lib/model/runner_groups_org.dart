part of swagger.api;

class RunnerGroupsOrg {
  
  double id = null;

  String name = null;

  String visibility = null;

  bool default_ = null;

  String selectedRepositoriesUrl = null;

  String runnersUrl = null;

  bool inherited = null;

  RunnerGroupsOrg();

  @override
  String toString() {
    return 'RunnerGroupsOrg[id=$id, name=$name, visibility=$visibility, default_=$default_, selectedRepositoriesUrl=$selectedRepositoriesUrl, runnersUrl=$runnersUrl, inherited=$inherited, ]';
  }

  RunnerGroupsOrg.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    visibility = json['visibility'];
    default_ = json['default'];
    selectedRepositoriesUrl = json['selected_repositories_url'];
    runnersUrl = json['runners_url'];
    inherited = json['inherited'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'visibility': visibility,
      'default': default_,
      'selected_repositories_url': selectedRepositoriesUrl,
      'runners_url': runnersUrl,
      'inherited': inherited
     };
  }

  static List<RunnerGroupsOrg> listFromJson(List<dynamic> json) {
    return json == null ? new List<RunnerGroupsOrg>() : json.map((value) => new RunnerGroupsOrg.fromJson(value)).toList();
  }

  static Map<String, RunnerGroupsOrg> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RunnerGroupsOrg>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RunnerGroupsOrg.fromJson(value));
    }
    return map;
  }
}
