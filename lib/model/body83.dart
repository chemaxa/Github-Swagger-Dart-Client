part of swagger.api;

class Body83 {
  /* A custom webhook event name. */
  String eventType = null;
/* JSON payload with extra information about the webhook event that your action or worklow may use. */
  Map clientPayload = {};

  Body83();

  @override
  String toString() {
    return 'Body83[eventType=$eventType, clientPayload=$clientPayload, ]';
  }

  Body83.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    eventType = json['event_type'];
    clientPayload = Object.mapFromJson(json['client_payload']);
  }

  Map<String, dynamic> toJson() {
    return {
      'event_type': eventType,
      'client_payload': clientPayload
     };
  }

  static List<Body83> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body83>() : json.map((value) => new Body83.fromJson(value)).toList();
  }

  static Map<String, Body83> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body83>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body83.fromJson(value));
    }
    return map;
  }
}
