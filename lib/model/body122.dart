part of swagger.api;

class Body122 {
  /* The text of the reply to the review comment. */
  String body = null;

  Body122();

  @override
  String toString() {
    return 'Body122[body=$body, ]';
  }

  Body122.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body122> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body122>() : json.map((value) => new Body122.fromJson(value)).toList();
  }

  static Map<String, Body122> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body122>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body122.fromJson(value));
    }
    return map;
  }
}
