part of swagger.api;

class Body19 {
  /* The comment text. */
  String body = null;

  Body19();

  @override
  String toString() {
    return 'Body19[body=$body, ]';
  }

  Body19.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body19> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body19>() : json.map((value) => new Body19.fromJson(value)).toList();
  }

  static Map<String, Body19> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body19>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body19.fromJson(value));
    }
    return map;
  }
}
