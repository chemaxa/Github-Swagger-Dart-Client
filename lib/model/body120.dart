part of swagger.api;

class Body120 {
  /* The name of the project. */
  String name = null;
/* The description of the project. */
  String body = null;

  Body120();

  @override
  String toString() {
    return 'Body120[name=$name, body=$body, ]';
  }

  Body120.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'body': body
     };
  }

  static List<Body120> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body120>() : json.map((value) => new Body120.fromJson(value)).toList();
  }

  static Map<String, Body120> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body120>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body120.fromJson(value));
    }
    return map;
  }
}
