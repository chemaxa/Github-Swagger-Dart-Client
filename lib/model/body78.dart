part of swagger.api;

class Body78 {
  /* The contents of the comment. */
  String body = null;
/* Relative path of the file to comment on. */
  String path = null;
/* Line index in the diff to comment on. */
  int position = null;
/* **Deprecated**. Use **position** parameter instead. Line number in the file to comment on. */
  int line = null;

  Body78();

  @override
  String toString() {
    return 'Body78[body=$body, path=$path, position=$position, line=$line, ]';
  }

  Body78.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
    path = json['path'];
    position = json['position'];
    line = json['line'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
      'path': path,
      'position': position,
      'line': line
     };
  }

  static List<Body78> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body78>() : json.map((value) => new Body78.fromJson(value)).toList();
  }

  static Map<String, Body78> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body78>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body78.fromJson(value));
    }
    return map;
  }
}
