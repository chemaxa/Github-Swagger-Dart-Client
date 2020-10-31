part of swagger.api;

class Body45 {
  /* The discussion post's title. */
  String title = null;
/* The discussion post's body text. */
  String body = null;

  Body45();

  @override
  String toString() {
    return 'Body45[title=$title, body=$body, ]';
  }

  Body45.fromJson(Map<String, dynamic> json) {
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

  static List<Body45> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body45>() : json.map((value) => new Body45.fromJson(value)).toList();
  }

  static Map<String, Body45> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body45>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body45.fromJson(value));
    }
    return map;
  }
}
