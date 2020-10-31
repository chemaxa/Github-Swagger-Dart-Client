part of swagger.api;

class ApplicationGrant {
  
  int id = null;

  String url = null;

  ApplicationgrantApp app = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  List<String> scopes = [];

  AllOfapplicationGrantUser user = null;

  ApplicationGrant();

  @override
  String toString() {
    return 'ApplicationGrant[id=$id, url=$url, app=$app, createdAt=$createdAt, updatedAt=$updatedAt, scopes=$scopes, user=$user, ]';
  }

  ApplicationGrant.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    url = json['url'];
    app = new ApplicationgrantApp.fromJson(json['app']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    scopes = (json['scopes'] as List).map((item) => item as String).toList();
    user = new AllOfapplicationGrantUser.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'app': app,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'scopes': scopes,
      'user': user
     };
  }

  static List<ApplicationGrant> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApplicationGrant>() : json.map((value) => new ApplicationGrant.fromJson(value)).toList();
  }

  static Map<String, ApplicationGrant> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApplicationGrant>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApplicationGrant.fromJson(value));
    }
    return map;
  }
}
