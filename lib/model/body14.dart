part of swagger.api;

class Body14 {
  /* Name of the runner group. */
  String name = null;
/* Visibility of a runner group. You can select all organizations or select individual organizations. Can be one of: `all` or `selected` */
  String visibility = VisibilityEnum.all_;
  //enum visibilityEnum {  selected,  all,  };

  Body14();

  @override
  String toString() {
    return 'Body14[name=$name, visibility=$visibility, ]';
  }

  Body14.fromJson(Map<String, dynamic> json) {
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

  static List<Body14> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body14>() : json.map((value) => new Body14.fromJson(value)).toList();
  }

  static Map<String, Body14> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body14>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body14.fromJson(value));
    }
    return map;
  }
}
