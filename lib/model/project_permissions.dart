part of swagger.api;

class ProjectPermissions {
  
  bool read = null;

  bool write = null;

  bool admin = null;

  ProjectPermissions();

  @override
  String toString() {
    return 'ProjectPermissions[read=$read, write=$write, admin=$admin, ]';
  }

  ProjectPermissions.fromJson(Map<String, dynamic> json) {
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

  static List<ProjectPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProjectPermissions>() : json.map((value) => new ProjectPermissions.fromJson(value)).toList();
  }

  static Map<String, ProjectPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProjectPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProjectPermissions.fromJson(value));
    }
    return map;
  }
}
