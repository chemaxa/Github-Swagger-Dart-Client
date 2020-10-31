part of swagger.api;

class Body106 {
  /* The contents of the comment. */
  String body = null;

  Body106();

  @override
  String toString() {
    return 'Body106[body=$body, ]';
  }

  Body106.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body106> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body106>() : json.map((value) => new Body106.fromJson(value)).toList();
  }

  static Map<String, Body106> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body106>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body106.fromJson(value));
    }
    return map;
  }
}
