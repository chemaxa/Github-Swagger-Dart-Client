part of swagger.api;

class ProtectedBranchAdminEnforced {
  
  String url = null;

  bool enabled = null;

  ProtectedBranchAdminEnforced();

  @override
  String toString() {
    return 'ProtectedBranchAdminEnforced[url=$url, enabled=$enabled, ]';
  }

  ProtectedBranchAdminEnforced.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'enabled': enabled
     };
  }

  static List<ProtectedBranchAdminEnforced> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtectedBranchAdminEnforced>() : json.map((value) => new ProtectedBranchAdminEnforced.fromJson(value)).toList();
  }

  static Map<String, ProtectedBranchAdminEnforced> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtectedBranchAdminEnforced>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProtectedBranchAdminEnforced.fromJson(value));
    }
    return map;
  }
}
