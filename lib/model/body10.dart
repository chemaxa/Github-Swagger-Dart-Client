part of swagger.api;

class Body10 {
  /* The title of the attachment */
  String title = null;
/* The body of the attachment */
  String body = null;

  Body10();

  @override
  String toString() {
    return 'Body10[title=$title, body=$body, ]';
  }

  Body10.fromJson(Map<String, dynamic> json) {
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

  static List<Body10> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body10>() : json.map((value) => new Body10.fromJson(value)).toList();
  }

  static Map<String, Body10> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body10>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body10.fromJson(value));
    }
    return map;
  }
}
