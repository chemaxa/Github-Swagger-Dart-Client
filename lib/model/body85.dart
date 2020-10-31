part of swagger.api;

class Body85 {
  /* The new blob's content. */
  String content = null;
/* The encoding used for `content`. Currently, `\"utf-8\"` and `\"base64\"` are supported. */
  String encoding = "utf-8";

  Body85();

  @override
  String toString() {
    return 'Body85[content=$content, encoding=$encoding, ]';
  }

  Body85.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
    encoding = json['encoding'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'encoding': encoding
     };
  }

  static List<Body85> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body85>() : json.map((value) => new Body85.fromJson(value)).toList();
  }

  static Map<String, Body85> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body85>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body85.fromJson(value));
    }
    return map;
  }
}
