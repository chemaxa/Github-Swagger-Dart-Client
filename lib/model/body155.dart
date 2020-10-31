part of swagger.api;

class Body155 {
  /* The discussion comment's body text. */
  String body = null;

  Body155();

  @override
  String toString() {
    return 'Body155[body=$body, ]';
  }

  Body155.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body155> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body155>() : json.map((value) => new Body155.fromJson(value)).toList();
  }

  static Map<String, Body155> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body155>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body155.fromJson(value));
    }
    return map;
  }
}
