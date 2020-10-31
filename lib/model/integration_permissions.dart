part of swagger.api;

class IntegrationPermissions {
  
  String issues = null;

  String checks = null;

  String metadata = null;

  String contents = null;

  String deployments = null;

  IntegrationPermissions();

  @override
  String toString() {
    return 'IntegrationPermissions[issues=$issues, checks=$checks, metadata=$metadata, contents=$contents, deployments=$deployments, ]';
  }

  IntegrationPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    issues = json['issues'];
    checks = json['checks'];
    metadata = json['metadata'];
    contents = json['contents'];
    deployments = json['deployments'];
  }

  Map<String, dynamic> toJson() {
    return {
      'issues': issues,
      'checks': checks,
      'metadata': metadata,
      'contents': contents,
      'deployments': deployments
     };
  }

  static List<IntegrationPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<IntegrationPermissions>() : json.map((value) => new IntegrationPermissions.fromJson(value)).toList();
  }

  static Map<String, IntegrationPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IntegrationPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IntegrationPermissions.fromJson(value));
    }
    return map;
  }
}
