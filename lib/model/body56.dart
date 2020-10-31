part of swagger.api;

class Body56 {
  /* Name of the project column */
  String name = null;

  Body56();

  @override
  String toString() {
    return 'Body56[name=$name, ]';
  }

  Body56.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<Body56> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body56>() : json.map((value) => new Body56.fromJson(value)).toList();
  }

  static Map<String, Body56> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body56>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body56.fromJson(value));
    }
    return map;
  }
}
