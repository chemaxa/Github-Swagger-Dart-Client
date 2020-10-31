part of swagger.api;

class Body166 {
  
  Body166();

  @override
  String toString() {
    return 'Body166[]';
  }

  Body166.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Body166> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body166>() : json.map((value) => new Body166.fromJson(value)).toList();
  }

  static Map<String, Body166> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body166>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body166.fromJson(value));
    }
    return map;
  }
}
