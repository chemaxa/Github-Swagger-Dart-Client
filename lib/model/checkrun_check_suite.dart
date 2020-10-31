part of swagger.api;

class CheckrunCheckSuite {
  
  int id = null;

  CheckrunCheckSuite();

  @override
  String toString() {
    return 'CheckrunCheckSuite[id=$id, ]';
  }

  CheckrunCheckSuite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<CheckrunCheckSuite> listFromJson(List<dynamic> json) {
    return json == null ? new List<CheckrunCheckSuite>() : json.map((value) => new CheckrunCheckSuite.fromJson(value)).toList();
  }

  static Map<String, CheckrunCheckSuite> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CheckrunCheckSuite>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CheckrunCheckSuite.fromJson(value));
    }
    return map;
  }
}
