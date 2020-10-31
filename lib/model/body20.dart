part of swagger.api;

class Body20 {
  /* The comment text. */
  String body = null;

  Body20();

  @override
  String toString() {
    return 'Body20[body=$body, ]';
  }

  Body20.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body20> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body20>() : json.map((value) => new Body20.fromJson(value)).toList();
  }

  static Map<String, Body20> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body20>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body20.fromJson(value));
    }
    return map;
  }
}
