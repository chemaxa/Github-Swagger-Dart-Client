part of swagger.api;

class Body61 {
  /* Name of the project column */
  String name = null;

  Body61();

  @override
  String toString() {
    return 'Body61[name=$name, ]';
  }

  Body61.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<Body61> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body61>() : json.map((value) => new Body61.fromJson(value)).toList();
  }

  static Map<String, Body61> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body61>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body61.fromJson(value));
    }
    return map;
  }
}
