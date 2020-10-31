part of swagger.api;

class Hook {
  
  String type = null;
/* Unique identifier of the webhook. */
  int id = null;
/* The name of a valid service, use 'web' for a webhook. */
  String name = null;
/* Determines whether the hook is actually triggered on pushes. */
  bool active = null;
/* Determines what events the hook is triggered for. Default: ['push']. */
  List<String> events = [];

  HookConfig config = null;

  DateTime updatedAt = null;

  DateTime createdAt = null;

  String url = null;

  String testUrl = null;

  String pingUrl = null;

  HookResponse lastResponse = null;

  Hook();

  @override
  String toString() {
    return 'Hook[type=$type, id=$id, name=$name, active=$active, events=$events, config=$config, updatedAt=$updatedAt, createdAt=$createdAt, url=$url, testUrl=$testUrl, pingUrl=$pingUrl, lastResponse=$lastResponse, ]';
  }

  Hook.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
    name = json['name'];
    active = json['active'];
    events = (json['events'] as List).map((item) => item as String).toList();
    config = new HookConfig.fromJson(json['config']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    url = json['url'];
    testUrl = json['test_url'];
    pingUrl = json['ping_url'];
    lastResponse = new HookResponse.fromJson(json['last_response']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'name': name,
      'active': active,
      'events': events,
      'config': config,
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'url': url,
      'test_url': testUrl,
      'ping_url': pingUrl,
      'last_response': lastResponse
     };
  }

  static List<Hook> listFromJson(List<dynamic> json) {
    return json == null ? new List<Hook>() : json.map((value) => new Hook.fromJson(value)).toList();
  }

  static Map<String, Hook> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Hook>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Hook.fromJson(value));
    }
    return map;
  }
}
