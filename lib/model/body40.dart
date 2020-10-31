part of swagger.api;

class Body40 {
  /* The name of the project. */
  String name = null;
/* The description of the project. */
  String body = null;

  Body40();

  @override
  String toString() {
    return 'Body40[name=$name, body=$body, ]';
  }

  Body40.fromJson(Map<String, dynamic> json) {
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

  static List<Body40> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body40>() : json.map((value) => new Body40.fromJson(value)).toList();
  }

  static Map<String, Body40> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body40>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body40.fromJson(value));
    }
    return map;
  }
}
