part of swagger.api;

class Body58 {
  /* The position of the column in a project */
  String position = null;

  Body58();

  @override
  String toString() {
    return 'Body58[position=$position, ]';
  }

  Body58.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    return {
      'position': position
     };
  }

  static List<Body58> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body58>() : json.map((value) => new Body58.fromJson(value)).toList();
  }

  static Map<String, Body58> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body58>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body58.fromJson(value));
    }
    return map;
  }
}
