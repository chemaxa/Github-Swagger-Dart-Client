part of swagger.api;

class ProtectedbranchEnforceAdmins {
  
  String url = null;

  bool enabled = null;

  ProtectedbranchEnforceAdmins();

  @override
  String toString() {
    return 'ProtectedbranchEnforceAdmins[url=$url, enabled=$enabled, ]';
  }

  ProtectedbranchEnforceAdmins.fromJson(Map<String, dynamic> json) {
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

  static List<ProtectedbranchEnforceAdmins> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtectedbranchEnforceAdmins>() : json.map((value) => new ProtectedbranchEnforceAdmins.fromJson(value)).toList();
  }

  static Map<String, ProtectedbranchEnforceAdmins> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtectedbranchEnforceAdmins>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProtectedbranchEnforceAdmins.fromJson(value));
    }
    return map;
  }
}
