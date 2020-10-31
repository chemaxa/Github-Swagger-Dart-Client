part of swagger.api;

class Body101 {
  /* The contents of the comment. */
  String body = null;

  Body101();

  @override
  String toString() {
    return 'Body101[body=$body, ]';
  }

  Body101.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body101> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body101>() : json.map((value) => new Body101.fromJson(value)).toList();
  }

  static Map<String, Body101> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body101>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body101.fromJson(value));
    }
    return map;
  }
}
