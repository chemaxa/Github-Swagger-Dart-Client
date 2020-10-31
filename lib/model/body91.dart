part of swagger.api;

class Body91 {
  /* Use `web` to create a webhook. Default: `web`. This parameter only accepts the value `web`. */
  String name = null;

  ReposownerrepohooksConfig config = null;
/* Determines what [events](https://developer.github.com/webhooks/event-payloads) the hook is triggered for. */
  List<String> events = [];
/* Determines if notifications are sent when the webhook is triggered. Set to `true` to send notifications. */
  bool active = true;

  Body91();

  @override
  String toString() {
    return 'Body91[name=$name, config=$config, events=$events, active=$active, ]';
  }

  Body91.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    config = new ReposownerrepohooksConfig.fromJson(json['config']);
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

  static List<Body91> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body91>() : json.map((value) => new Body91.fromJson(value)).toList();
  }

  static Map<String, Body91> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body91>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body91.fromJson(value));
    }
    return map;
  }
}
