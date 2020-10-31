part of swagger.api;

class ActionsEnabled {
  
  ActionsEnabled();

  @override
  String toString() {
    return 'ActionsEnabled[]';
  }

  ActionsEnabled.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ActionsEnabled> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActionsEnabled>() : json.map((value) => new ActionsEnabled.fromJson(value)).toList();
  }

  static Map<String, ActionsEnabled> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActionsEnabled>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActionsEnabled.fromJson(value));
    }
    return map;
  }
}
