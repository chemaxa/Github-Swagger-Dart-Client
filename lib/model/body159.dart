part of swagger.api;

class Body159 {
  /* The role that this user should have in the team. Can be one of:   \\* `member` - a normal member of the team.   \\* `maintainer` - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description. */
  String role = RoleEnum.member_;
  //enum roleEnum {  member,  maintainer,  };

  Body159();

  @override
  String toString() {
    return 'Body159[role=$role, ]';
  }

  Body159.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role
     };
  }

  static List<Body159> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body159>() : json.map((value) => new Body159.fromJson(value)).toList();
  }

  static Map<String, Body159> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body159>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body159.fromJson(value));
    }
    return map;
  }
}
