part of swagger.api;

class Body99 {
  /* The permissions that the associated user will have on the repository. Valid values are `read`, `write`, `maintain`, `triage`, and `admin`. */
  String permissions = null;
  //enum permissionsEnum {  read,  write,  maintain,  triage,  admin,  };

  Body99();

  @override
  String toString() {
    return 'Body99[permissions=$permissions, ]';
  }

  Body99.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permissions = json['permissions'];
  }

  Map<String, dynamic> toJson() {
    return {
      'permissions': permissions
     };
  }

  static List<Body99> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body99>() : json.map((value) => new Body99.fromJson(value)).toList();
  }

  static Map<String, Body99> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body99>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body99.fromJson(value));
    }
    return map;
  }
}
