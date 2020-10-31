part of swagger.api;

class RepositoryTemplateRepositoryPermissions {
  
  bool admin = null;

  bool push = null;

  bool pull = null;

  RepositoryTemplateRepositoryPermissions();

  @override
  String toString() {
    return 'RepositoryTemplateRepositoryPermissions[admin=$admin, push=$push, pull=$pull, ]';
  }

  RepositoryTemplateRepositoryPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    admin = json['admin'];
    push = json['push'];
    pull = json['pull'];
  }

  Map<String, dynamic> toJson() {
    return {
      'admin': admin,
      'push': push,
      'pull': pull
     };
  }

  static List<RepositoryTemplateRepositoryPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<RepositoryTemplateRepositoryPermissions>() : json.map((value) => new RepositoryTemplateRepositoryPermissions.fromJson(value)).toList();
  }

  static Map<String, RepositoryTemplateRepositoryPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RepositoryTemplateRepositoryPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RepositoryTemplateRepositoryPermissions.fromJson(value));
    }
    return map;
  }
}
