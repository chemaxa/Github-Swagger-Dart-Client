part of swagger.api;

class Body28 {
  /* Name of the runner group. */
  String name = null;
/* Visibility of a runner group. You can select all repositories, select individual repositories, or all private repositories. Can be one of: `all`, `selected`, or `private`. */
  String visibility = null;
  //enum visibilityEnum {  selected,  all,  private,  };

  Body28();

  @override
  String toString() {
    return 'Body28[name=$name, visibility=$visibility, ]';
  }

  Body28.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    visibility = json['visibility'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'visibility': visibility
     };
  }

  static List<Body28> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body28>() : json.map((value) => new Body28.fromJson(value)).toList();
  }

  static Map<String, Body28> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body28>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body28.fromJson(value));
    }
    return map;
  }
}
