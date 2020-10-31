part of swagger.api;

class ProtectedbranchRequiredLinearHistory {
  
  bool enabled = null;

  ProtectedbranchRequiredLinearHistory();

  @override
  String toString() {
    return 'ProtectedbranchRequiredLinearHistory[enabled=$enabled, ]';
  }

  ProtectedbranchRequiredLinearHistory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    return {
      'enabled': enabled
     };
  }

  static List<ProtectedbranchRequiredLinearHistory> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtectedbranchRequiredLinearHistory>() : json.map((value) => new ProtectedbranchRequiredLinearHistory.fromJson(value)).toList();
  }

  static Map<String, ProtectedbranchRequiredLinearHistory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtectedbranchRequiredLinearHistory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProtectedbranchRequiredLinearHistory.fromJson(value));
    }
    return map;
  }
}
