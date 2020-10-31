part of swagger.api;

class TeamMembership {
  
  String url = null;
/* The role of the user in the team. */
  String role = RoleEnum.member_;
  //enum roleEnum {  member,  maintainer,  };

  String state = null;

  TeamMembership();

  @override
  String toString() {
    return 'TeamMembership[url=$url, role=$role, state=$state, ]';
  }

  TeamMembership.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    role = json['role'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'role': role,
      'state': state
     };
  }

  static List<TeamMembership> listFromJson(List<dynamic> json) {
    return json == null ? new List<TeamMembership>() : json.map((value) => new TeamMembership.fromJson(value)).toList();
  }

  static Map<String, TeamMembership> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TeamMembership>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TeamMembership.fromJson(value));
    }
    return map;
  }
}
