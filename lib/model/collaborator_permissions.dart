part of swagger.api;

class CollaboratorPermissions {
  
  bool pull = null;

  bool push = null;

  bool admin = null;

  CollaboratorPermissions();

  @override
  String toString() {
    return 'CollaboratorPermissions[pull=$pull, push=$push, admin=$admin, ]';
  }

  CollaboratorPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pull = json['pull'];
    push = json['push'];
    admin = json['admin'];
  }

  Map<String, dynamic> toJson() {
    return {
      'pull': pull,
      'push': push,
      'admin': admin
     };
  }

  static List<CollaboratorPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<CollaboratorPermissions>() : json.map((value) => new CollaboratorPermissions.fromJson(value)).toList();
  }

  static Map<String, CollaboratorPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CollaboratorPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CollaboratorPermissions.fromJson(value));
    }
    return map;
  }
}
