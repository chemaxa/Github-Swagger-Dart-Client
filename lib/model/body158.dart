part of swagger.api;

class Body158 {
  /* The [reaction type](https://developer.github.com/v3/reactions/#reaction-types) to add to the team discussion. */
  String content = null;
  //enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

  Body158();

  @override
  String toString() {
    return 'Body158[content=$content, ]';
  }

  Body158.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<Body158> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body158>() : json.map((value) => new Body158.fromJson(value)).toList();
  }

  static Map<String, Body158> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body158>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body158.fromJson(value));
    }
    return map;
  }
}
