part of swagger.api;

class Body23 {
  /* Whether to block all notifications from a thread. */
  bool ignored = false;

  Body23();

  @override
  String toString() {
    return 'Body23[ignored=$ignored, ]';
  }

  Body23.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ignored = json['ignored'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ignored': ignored
     };
  }

  static List<Body23> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body23>() : json.map((value) => new Body23.fromJson(value)).toList();
  }

  static Map<String, Body23> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body23>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body23.fromJson(value));
    }
    return map;
  }
}
