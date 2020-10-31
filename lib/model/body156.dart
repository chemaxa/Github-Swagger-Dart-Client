part of swagger.api;

class Body156 {
  /* The discussion comment's body text. */
  String body = null;

  Body156();

  @override
  String toString() {
    return 'Body156[body=$body, ]';
  }

  Body156.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body156> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body156>() : json.map((value) => new Body156.fromJson(value)).toList();
  }

  static Map<String, Body156> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body156>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body156.fromJson(value));
    }
    return map;
  }
}
