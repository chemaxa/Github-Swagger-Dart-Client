part of swagger.api;

class Body34 {
  
  OrgsorghookshookIdConfig config = null;
/* Determines what [events](https://developer.github.com/webhooks/event-payloads) the hook is triggered for. */
  List<String> events = [];
/* Determines if notifications are sent when the webhook is triggered. Set to `true` to send notifications. */
  bool active = true;

  String name = null;

  Body34();

  @override
  String toString() {
    return 'Body34[config=$config, events=$events, active=$active, name=$name, ]';
  }

  Body34.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    config = new OrgsorghookshookIdConfig.fromJson(json['config']);
    events = (json['events'] as List).map((item) => item as String).toList();
    active = json['active'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'config': config,
      'events': events,
      'active': active,
      'name': name
     };
  }

  static List<Body34> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body34>() : json.map((value) => new Body34.fromJson(value)).toList();
  }

  static Map<String, Body34> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body34>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body34.fromJson(value));
    }
    return map;
  }
}
