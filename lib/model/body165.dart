part of swagger.api;

class Body165 {
  
  Body165();

  @override
  String toString() {
    return 'Body165[]';
  }

  Body165.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Body165> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body165>() : json.map((value) => new Body165.fromJson(value)).toList();
  }

  static Map<String, Body165> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body165>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body165.fromJson(value));
    }
    return map;
  }
}
