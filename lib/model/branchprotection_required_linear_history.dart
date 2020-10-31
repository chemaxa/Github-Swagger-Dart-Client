part of swagger.api;

class BranchprotectionRequiredLinearHistory {
  
  bool enabled = null;

  BranchprotectionRequiredLinearHistory();

  @override
  String toString() {
    return 'BranchprotectionRequiredLinearHistory[enabled=$enabled, ]';
  }

  BranchprotectionRequiredLinearHistory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    return {
      'enabled': enabled
     };
  }

  static List<BranchprotectionRequiredLinearHistory> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchprotectionRequiredLinearHistory>() : json.map((value) => new BranchprotectionRequiredLinearHistory.fromJson(value)).toList();
  }

  static Map<String, BranchprotectionRequiredLinearHistory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchprotectionRequiredLinearHistory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchprotectionRequiredLinearHistory.fromJson(value));
    }
    return map;
  }
}
