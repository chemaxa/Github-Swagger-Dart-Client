part of swagger.api;

class RunnerGroupsEnterprise {
  
  double id = null;

  String name = null;

  String visibility = null;

  bool default_ = null;

  String selectedOrganizationsUrl = null;

  String runnersUrl = null;

  RunnerGroupsEnterprise();

  @override
  String toString() {
    return 'RunnerGroupsEnterprise[id=$id, name=$name, visibility=$visibility, default_=$default_, selectedOrganizationsUrl=$selectedOrganizationsUrl, runnersUrl=$runnersUrl, ]';
  }

  RunnerGroupsEnterprise.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    visibility = json['visibility'];
    default_ = json['default'];
    selectedOrganizationsUrl = json['selected_organizations_url'];
    runnersUrl = json['runners_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'visibility': visibility,
      'default': default_,
      'selected_organizations_url': selectedOrganizationsUrl,
      'runners_url': runnersUrl
     };
  }

  static List<RunnerGroupsEnterprise> listFromJson(List<dynamic> json) {
    return json == null ? new List<RunnerGroupsEnterprise>() : json.map((value) => new RunnerGroupsEnterprise.fromJson(value)).toList();
  }

  static Map<String, RunnerGroupsEnterprise> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RunnerGroupsEnterprise>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RunnerGroupsEnterprise.fromJson(value));
    }
    return map;
  }
}
