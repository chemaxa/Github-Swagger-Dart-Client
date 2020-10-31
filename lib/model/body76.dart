part of swagger.api;

class Body76 {
  /* The contents of the comment */
  String body = null;

  Body76();

  @override
  String toString() {
    return 'Body76[body=$body, ]';
  }

  Body76.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body76> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body76>() : json.map((value) => new Body76.fromJson(value)).toList();
  }

  static Map<String, Body76> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body76>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body76.fromJson(value));
    }
    return map;
  }
}
