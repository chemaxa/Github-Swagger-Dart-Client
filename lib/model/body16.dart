part of swagger.api;

class Body16 {
  /* List of runner IDs to add to the runner group. */
  List<int> runners = [];

  Body16();

  @override
  String toString() {
    return 'Body16[runners=$runners, ]';
  }

  Body16.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    runners = (json['runners'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'runners': runners
     };
  }

  static List<Body16> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body16>() : json.map((value) => new Body16.fromJson(value)).toList();
  }

  static Map<String, Body16> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body16>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body16.fromJson(value));
    }
    return map;
  }
}
