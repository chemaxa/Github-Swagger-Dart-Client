part of swagger.api;

class ActionsSecret {
  /* The name of the secret. */
  String name = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  ActionsSecret();

  @override
  String toString() {
    return 'ActionsSecret[name=$name, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  ActionsSecret.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String()
     };
  }

  static List<ActionsSecret> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActionsSecret>() : json.map((value) => new ActionsSecret.fromJson(value)).toList();
  }

  static Map<String, ActionsSecret> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActionsSecret>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActionsSecret.fromJson(value));
    }
    return map;
  }
}
