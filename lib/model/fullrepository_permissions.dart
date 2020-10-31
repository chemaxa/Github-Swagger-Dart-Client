part of swagger.api;

class FullrepositoryPermissions {
  
  bool admin = null;

  bool pull = null;

  bool push = null;

  FullrepositoryPermissions();

  @override
  String toString() {
    return 'FullrepositoryPermissions[admin=$admin, pull=$pull, push=$push, ]';
  }

  FullrepositoryPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    admin = json['admin'];
    pull = json['pull'];
    push = json['push'];
  }

  Map<String, dynamic> toJson() {
    return {
      'admin': admin,
      'pull': pull,
      'push': push
     };
  }

  static List<FullrepositoryPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<FullrepositoryPermissions>() : json.map((value) => new FullrepositoryPermissions.fromJson(value)).toList();
  }

  static Map<String, FullrepositoryPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FullrepositoryPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FullrepositoryPermissions.fromJson(value));
    }
    return map;
  }
}
