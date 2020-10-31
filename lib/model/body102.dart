part of swagger.api;

class Body102 {
  /* The [reaction type](https://developer.github.com/v3/reactions/#reaction-types) to add to the issue comment. */
  String content = null;
  //enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

  Body102();

  @override
  String toString() {
    return 'Body102[content=$content, ]';
  }

  Body102.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<Body102> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body102>() : json.map((value) => new Body102.fromJson(value)).toList();
  }

  static Map<String, Body102> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body102>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body102.fromJson(value));
    }
    return map;
  }
}
