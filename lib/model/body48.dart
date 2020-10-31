part of swagger.api;

class Body48 {
  /* The [reaction type](https://developer.github.com/v3/reactions/#reaction-types) to add to the team discussion comment. */
  String content = null;
  //enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

  Body48();

  @override
  String toString() {
    return 'Body48[content=$content, ]';
  }

  Body48.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<Body48> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body48>() : json.map((value) => new Body48.fromJson(value)).toList();
  }

  static Map<String, Body48> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body48>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body48.fromJson(value));
    }
    return map;
  }
}
