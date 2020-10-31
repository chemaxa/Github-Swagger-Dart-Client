part of swagger.api;

class TeamprojectPermissions {
  
  bool read = null;

  bool write = null;

  bool admin = null;

  TeamprojectPermissions();

  @override
  String toString() {
    return 'TeamprojectPermissions[read=$read, write=$write, admin=$admin, ]';
  }

  TeamprojectPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    read = json['read'];
    write = json['write'];
    admin = json['admin'];
  }

  Map<String, dynamic> toJson() {
    return {
      'read': read,
      'write': write,
      'admin': admin
     };
  }

  static List<TeamprojectPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<TeamprojectPermissions>() : json.map((value) => new TeamprojectPermissions.fromJson(value)).toList();
  }

  static Map<String, TeamprojectPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TeamprojectPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TeamprojectPermissions.fromJson(value));
    }
    return map;
  }
}
