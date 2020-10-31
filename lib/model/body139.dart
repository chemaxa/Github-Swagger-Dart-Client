part of swagger.api;

class Body139 {
  /* Determines if notifications should be received from this repository. */
  bool subscribed = null;
/* Determines if all notifications should be blocked from this repository. */
  bool ignored = null;

  Body139();

  @override
  String toString() {
    return 'Body139[subscribed=$subscribed, ignored=$ignored, ]';
  }

  Body139.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subscribed = json['subscribed'];
    ignored = json['ignored'];
  }

  Map<String, dynamic> toJson() {
    return {
      'subscribed': subscribed,
      'ignored': ignored
     };
  }

  static List<Body139> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body139>() : json.map((value) => new Body139.fromJson(value)).toList();
  }

  static Map<String, Body139> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body139>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body139.fromJson(value));
    }
    return map;
  }
}
