part of swagger.api;

class Body161 {
  /* The permission to grant the team on this repository. Can be one of:   \\* `pull` - team members can pull, but not push to or administer this repository.   \\* `push` - team members can pull and push, but not administer this repository.   \\* `admin` - team members can pull, push and administer this repository.      If no permission is specified, the team's `permission` attribute will be used to determine what permission to grant the team on this repository. */
  String permission = null;
  //enum permissionEnum {  pull,  push,  admin,  };

  Body161();

  @override
  String toString() {
    return 'Body161[permission=$permission, ]';
  }

  Body161.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permission = json['permission'];
  }

  Map<String, dynamic> toJson() {
    return {
      'permission': permission
     };
  }

  static List<Body161> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body161>() : json.map((value) => new Body161.fromJson(value)).toList();
  }

  static Map<String, Body161> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body161>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body161.fromJson(value));
    }
    return map;
  }
}
