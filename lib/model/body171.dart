part of swagger.api;

class Body171 {
  /* Name of the project */
  String name = null;
/* Body of the project */
  String body = null;

  Body171();

  @override
  String toString() {
    return 'Body171[name=$name, body=$body, ]';
  }

  Body171.fromJson(Map<String, dynamic> json) {
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

  static List<Body171> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body171>() : json.map((value) => new Body171.fromJson(value)).toList();
  }

  static Map<String, Body171> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body171>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body171.fromJson(value));
    }
    return map;
  }
}
