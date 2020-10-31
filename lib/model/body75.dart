part of swagger.api;

class Body75 {
  /* The permission to grant the collaborator. **Only valid on organization-owned repositories.** Can be one of:   \\* `pull` - can pull, but not push to or administer this repository.   \\* `push` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push and administer this repository.   \\* `maintain` - Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.   \\* `triage` - Recommended for contributors who need to proactively manage issues and pull requests without write access. */
  String permission = PermissionEnum.push_;
  //enum permissionEnum {  pull,  push,  admin,  maintain,  triage,  };

  String permissions = null;

  Body75();

  @override
  String toString() {
    return 'Body75[permission=$permission, permissions=$permissions, ]';
  }

  Body75.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permission = json['permission'];
    permissions = json['permissions'];
  }

  Map<String, dynamic> toJson() {
    return {
      'permission': permission,
      'permissions': permissions
     };
  }

  static List<Body75> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body75>() : json.map((value) => new Body75.fromJson(value)).toList();
  }

  static Map<String, Body75> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body75>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body75.fromJson(value));
    }
    return map;
  }
}
