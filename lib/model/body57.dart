part of swagger.api;

class Body57 {
  
  Body57();

  @override
  String toString() {
    return 'Body57[]';
  }

  Body57.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Body57> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body57>() : json.map((value) => new Body57.fromJson(value)).toList();
  }

  static Map<String, Body57> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body57>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body57.fromJson(value));
    }
    return map;
  }
}
