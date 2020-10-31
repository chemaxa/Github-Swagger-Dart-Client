part of swagger.api;

class Body160 {
  /* The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\" */
  String permission = null;
  //enum permissionEnum {  read,  write,  admin,  };

  Body160();

  @override
  String toString() {
    return 'Body160[permission=$permission, ]';
  }

  Body160.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permission = json['permission'];
  }

  Map<String, dynamic> toJson() {
    return {
      'permission': permission
     };
  }

  static List<Body160> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body160>() : json.map((value) => new Body160.fromJson(value)).toList();
  }

  static Map<String, Body160> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body160>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body160.fromJson(value));
    }
    return map;
  }
}
