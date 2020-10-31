part of swagger.api;

class Body30 {
  /* List of runner IDs to add to the runner group. */
  List<int> runners = [];

  Body30();

  @override
  String toString() {
    return 'Body30[runners=$runners, ]';
  }

  Body30.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    runners = (json['runners'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'runners': runners
     };
  }

  static List<Body30> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body30>() : json.map((value) => new Body30.fromJson(value)).toList();
  }

  static Map<String, Body30> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body30>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body30.fromJson(value));
    }
    return map;
  }
}
