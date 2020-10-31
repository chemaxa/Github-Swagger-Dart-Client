part of swagger.api;

class ProtectedbranchRequiredSignatures {
  
  String url = null;

  bool enabled = null;

  ProtectedbranchRequiredSignatures();

  @override
  String toString() {
    return 'ProtectedbranchRequiredSignatures[url=$url, enabled=$enabled, ]';
  }

  ProtectedbranchRequiredSignatures.fromJson(Map<String, dynamic> json) {
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

  static List<ProtectedbranchRequiredSignatures> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProtectedbranchRequiredSignatures>() : json.map((value) => new ProtectedbranchRequiredSignatures.fromJson(value)).toList();
  }

  static Map<String, ProtectedbranchRequiredSignatures> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtectedbranchRequiredSignatures>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProtectedbranchRequiredSignatures.fromJson(value));
    }
    return map;
  }
}
