part of swagger.api;

class Body77 {
  /* The [reaction type](https://developer.github.com/v3/reactions/#reaction-types) to add to the commit comment. */
  String content = null;
  //enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

  Body77();

  @override
  String toString() {
    return 'Body77[content=$content, ]';
  }

  Body77.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<Body77> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body77>() : json.map((value) => new Body77.fromJson(value)).toList();
  }

  static Map<String, Body77> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body77>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body77.fromJson(value));
    }
    return map;
  }
}
