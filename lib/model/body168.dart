part of swagger.api;

class Body168 {
  /* A descriptive name for the new key. */
  String title = null;
/* The public SSH key to add to your GitHub account. */
  String key = null;

  Body168();

  @override
  String toString() {
    return 'Body168[title=$title, key=$key, ]';
  }

  Body168.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'key': key
     };
  }

  static List<Body168> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body168>() : json.map((value) => new Body168.fromJson(value)).toList();
  }

  static Map<String, Body168> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body168>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body168.fromJson(value));
    }
    return map;
  }
}
