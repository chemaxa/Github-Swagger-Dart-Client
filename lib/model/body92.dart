part of swagger.api;

class Body92 {
  
  ReposownerrepohookshookIdConfig config = null;
/* Determines what [events](https://developer.github.com/webhooks/event-payloads) the hook is triggered for. This replaces the entire array of events. */
  List<String> events = [];
/* Determines a list of events to be added to the list of events that the Hook triggers for. */
  List<String> addEvents = [];
/* Determines a list of events to be removed from the list of events that the Hook triggers for. */
  List<String> removeEvents = [];
/* Determines if notifications are sent when the webhook is triggered. Set to `true` to send notifications. */
  bool active = true;

  Body92();

  @override
  String toString() {
    return 'Body92[config=$config, events=$events, addEvents=$addEvents, removeEvents=$removeEvents, active=$active, ]';
  }

  Body92.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    config = new ReposownerrepohookshookIdConfig.fromJson(json['config']);
    events = (json['events'] as List).map((item) => item as String).toList();
    addEvents = (json['add_events'] as List).map((item) => item as String).toList();
    removeEvents = (json['remove_events'] as List).map((item) => item as String).toList();
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    return {
      'config': config,
      'events': events,
      'add_events': addEvents,
      'remove_events': removeEvents,
      'active': active
     };
  }

  static List<Body92> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body92>() : json.map((value) => new Body92.fromJson(value)).toList();
  }

  static Map<String, Body92> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body92>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body92.fromJson(value));
    }
    return map;
  }
}
