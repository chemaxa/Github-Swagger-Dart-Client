part of swagger.api;

class Body49 {
  /* The [reaction type](https://developer.github.com/v3/reactions/#reaction-types) to add to the team discussion. */
  String content = null;
  //enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

  Body49();

  @override
  String toString() {
    return 'Body49[content=$content, ]';
  }

  Body49.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<Body49> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body49>() : json.map((value) => new Body49.fromJson(value)).toList();
  }

  static Map<String, Body49> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body49>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body49.fromJson(value));
    }
    return map;
  }
}
