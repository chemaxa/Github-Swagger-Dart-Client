part of swagger.api;

class Body123 {
  /* The [reaction type](https://developer.github.com/v3/reactions/#reaction-types) to add to the pull request review comment. */
  String content = null;
  //enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

  Body123();

  @override
  String toString() {
    return 'Body123[content=$content, ]';
  }

  Body123.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<Body123> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body123>() : json.map((value) => new Body123.fromJson(value)).toList();
  }

  static Map<String, Body123> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body123>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body123.fromJson(value));
    }
    return map;
  }
}
