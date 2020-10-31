part of swagger.api;

class RepositoryPermissions {
  
  bool admin = null;

  bool pull = null;

  bool triage = null;

  bool push = null;

  bool maintain = null;

  RepositoryPermissions();

  @override
  String toString() {
    return 'RepositoryPermissions[admin=$admin, pull=$pull, triage=$triage, push=$push, maintain=$maintain, ]';
  }

  RepositoryPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    admin = json['admin'];
    pull = json['pull'];
    triage = json['triage'];
    push = json['push'];
    maintain = json['maintain'];
  }

  Map<String, dynamic> toJson() {
    return {
      'admin': admin,
      'pull': pull,
      'triage': triage,
      'push': push,
      'maintain': maintain
     };
  }

  static List<RepositoryPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<RepositoryPermissions>() : json.map((value) => new RepositoryPermissions.fromJson(value)).toList();
  }

  static Map<String, RepositoryPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RepositoryPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RepositoryPermissions.fromJson(value));
    }
    return map;
  }
}
