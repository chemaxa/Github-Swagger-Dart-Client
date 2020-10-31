part of swagger.api;

class Body157 {
  /* The [reaction type](https://developer.github.com/v3/reactions/#reaction-types) to add to the team discussion comment. */
  String content = null;
  //enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

  Body157();

  @override
  String toString() {
    return 'Body157[content=$content, ]';
  }

  Body157.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<Body157> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body157>() : json.map((value) => new Body157.fromJson(value)).toList();
  }

  static Map<String, Body157> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body157>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body157.fromJson(value));
    }
    return map;
  }
}
