part of swagger.api;

class Body38 {
  /* The role to give the user in the organization. Can be one of:   \\* `admin` - The user will become an owner of the organization.   \\* `member` - The user will become a non-owner member of the organization. */
  String role = RoleEnum.member_;
  //enum roleEnum {  admin,  member,  };

  Body38();

  @override
  String toString() {
    return 'Body38[role=$role, ]';
  }

  Body38.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role
     };
  }

  static List<Body38> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body38>() : json.map((value) => new Body38.fromJson(value)).toList();
  }

  static Map<String, Body38> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body38>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body38.fromJson(value));
    }
    return map;
  }
}
