part of swagger.api;

class Integration {
  
  Integration();

  @override
  String toString() {
    return 'Integration[]';
  }

  Integration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Integration> listFromJson(List<dynamic> json) {
    return json == null ? new List<Integration>() : json.map((value) => new Integration.fromJson(value)).toList();
  }

  static Map<String, Integration> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Integration>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Integration.fromJson(value));
    }
    return map;
  }
}
