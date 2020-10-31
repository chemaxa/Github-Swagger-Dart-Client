part of swagger.api;

class Body50 {
  /* The role that this user should have in the team. Can be one of:   \\* `member` - a normal member of the team.   \\* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description. */
  String role = RoleEnum.member_;
  //enum roleEnum {  member,  maintainer,  };

  Body50();

  @override
  String toString() {
    return 'Body50[role=$role, ]';
  }

  Body50.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role
     };
  }

  static List<Body50> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body50>() : json.map((value) => new Body50.fromJson(value)).toList();
  }

  static Map<String, Body50> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body50>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body50.fromJson(value));
    }
    return map;
  }
}
