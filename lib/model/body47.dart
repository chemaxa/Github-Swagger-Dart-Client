part of swagger.api;

class Body47 {
  /* The discussion comment's body text. */
  String body = null;

  Body47();

  @override
  String toString() {
    return 'Body47[body=$body, ]';
  }

  Body47.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body47> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body47>() : json.map((value) => new Body47.fromJson(value)).toList();
  }

  static Map<String, Body47> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body47>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body47.fromJson(value));
    }
    return map;
  }
}
