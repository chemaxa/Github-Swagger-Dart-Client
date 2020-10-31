part of swagger.api;

class Body52 {
  /* The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.   \\* `maintain` - team members can manage the repository without access to sensitive or destructive actions. Recommended for project managers. Only applies to repositories owned by organizations.   \\* `triage` - team members can proactively manage issues and pull requests without write access. Recommended for contributors who triage a repository. Only applies to repositories owned by organizations.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository. */
  String permission = null;
  //enum permissionEnum {  pull,  push,  admin,  maintain,  triage,  };

  Body52();

  @override
  String toString() {
    return 'Body52[permission=$permission, ]';
  }

  Body52.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permission = json['permission'];
  }

  Map<String, dynamic> toJson() {
    return {
      'permission': permission
     };
  }

  static List<Body52> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body52>() : json.map((value) => new Body52.fromJson(value)).toList();
  }

  static Map<String, Body52> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body52>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body52.fromJson(value));
    }
    return map;
  }
}
