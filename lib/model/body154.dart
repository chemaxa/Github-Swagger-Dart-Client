part of swagger.api;

class Body154 {
  /* The discussion post's title. */
  String title = null;
/* The discussion post's body text. */
  String body = null;

  Body154();

  @override
  String toString() {
    return 'Body154[title=$title, body=$body, ]';
  }

  Body154.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body
     };
  }

  static List<Body154> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body154>() : json.map((value) => new Body154.fromJson(value)).toList();
  }

  static Map<String, Body154> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body154>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body154.fromJson(value));
    }
    return map;
  }
}
