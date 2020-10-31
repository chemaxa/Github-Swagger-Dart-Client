part of swagger.api;

class Body110 {
  /* The [reaction type](https://developer.github.com/v3/reactions/#reaction-types) to add to the issue. */
  String content = null;
  //enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

  Body110();

  @override
  String toString() {
    return 'Body110[content=$content, ]';
  }

  Body110.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<Body110> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body110>() : json.map((value) => new Body110.fromJson(value)).toList();
  }

  static Map<String, Body110> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body110>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body110.fromJson(value));
    }
    return map;
  }
}
