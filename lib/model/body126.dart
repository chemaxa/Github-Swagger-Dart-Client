part of swagger.api;

class Body126 {
  /* The text of the review comment. */
  String body = null;

  Body126();

  @override
  String toString() {
    return 'Body126[body=$body, ]';
  }

  Body126.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body126> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body126>() : json.map((value) => new Body126.fromJson(value)).toList();
  }

  static Map<String, Body126> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body126>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body126.fromJson(value));
    }
    return map;
  }
}
