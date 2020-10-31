part of swagger.api;

class Body33 {
  /* Must be passed as \"web\". */
  String name = null;

  OrgsorghooksConfig config = null;
/* Determines what [events](https://developer.github.com/webhooks/event-payloads) the hook is triggered for. */
  List<String> events = [];
/* Determines if notifications are sent when the webhook is triggered. Set to `true` to send notifications. */
  bool active = true;

  Body33();

  @override
  String toString() {
    return 'Body33[name=$name, config=$config, events=$events, active=$active, ]';
  }

  Body33.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    config = new OrgsorghooksConfig.fromJson(json['config']);
    events = (json['events'] as List).map((item) => item as String).toList();
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'config': config,
      'events': events,
      'active': active
     };
  }

  static List<Body33> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body33>() : json.map((value) => new Body33.fromJson(value)).toList();
  }

  static Map<String, Body33> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body33>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body33.fromJson(value));
    }
    return map;
  }
}
