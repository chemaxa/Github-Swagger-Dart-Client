part of swagger.api;

class Body46 {
  /* The discussion comment's body text. */
  String body = null;

  Body46();

  @override
  String toString() {
    return 'Body46[body=$body, ]';
  }

  Body46.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body46> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body46>() : json.map((value) => new Body46.fromJson(value)).toList();
  }

  static Map<String, Body46> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body46>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body46.fromJson(value));
    }
    return map;
  }
}
