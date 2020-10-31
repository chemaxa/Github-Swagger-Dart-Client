part of swagger.api;

class Body131 {
  /* The body text of the pull request review. */
  String body = null;

  Body131();

  @override
  String toString() {
    return 'Body131[body=$body, ]';
  }

  Body131.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body
     };
  }

  static List<Body131> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body131>() : json.map((value) => new Body131.fromJson(value)).toList();
  }

  static Map<String, Body131> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body131>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body131.fromJson(value));
    }
    return map;
  }
}
