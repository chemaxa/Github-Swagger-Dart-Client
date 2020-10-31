part of swagger.api;

class OrgHook {
  
  int id = null;

  String url = null;

  String pingUrl = null;

  String name = null;

  List<String> events = [];

  bool active = null;

  OrghookConfig config = null;

  DateTime updatedAt = null;

  DateTime createdAt = null;

  String type = null;

  OrgHook();

  @override
  String toString() {
    return 'OrgHook[id=$id, url=$url, pingUrl=$pingUrl, name=$name, events=$events, active=$active, config=$config, updatedAt=$updatedAt, createdAt=$createdAt, type=$type, ]';
  }

  OrgHook.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    url = json['url'];
    pingUrl = json['ping_url'];
    name = json['name'];
    events = (json['events'] as List).map((item) => item as String).toList();
    active = json['active'];
    config = new OrghookConfig.fromJson(json['config']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'ping_url': pingUrl,
      'name': name,
      'events': events,
      'active': active,
      'config': config,
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'type': type
     };
  }

  static List<OrgHook> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrgHook>() : json.map((value) => new OrgHook.fromJson(value)).toList();
  }

  static Map<String, OrgHook> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrgHook>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrgHook.fromJson(value));
    }
    return map;
  }
}
