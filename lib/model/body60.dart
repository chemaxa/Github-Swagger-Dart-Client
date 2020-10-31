part of swagger.api;

class Body60 {
  /* The permission to grant the collaborator. */
  String permission = PermissionEnum.write_;
  //enum permissionEnum {  read,  write,  admin,  };

  Body60();

  @override
  String toString() {
    return 'Body60[permission=$permission, ]';
  }

  Body60.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permission = json['permission'];
  }

  Map<String, dynamic> toJson() {
    return {
      'permission': permission
     };
  }

  static List<Body60> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body60>() : json.map((value) => new Body60.fromJson(value)).toList();
  }

  static Map<String, Body60> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body60>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body60.fromJson(value));
    }
    return map;
  }
}
