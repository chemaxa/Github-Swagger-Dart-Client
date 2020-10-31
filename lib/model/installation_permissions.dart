part of swagger.api;

class InstallationPermissions {
  
  String deployments = null;

  String checks = null;

  String metadata = null;

  String contents = null;

  String pullRequests = null;

  String statuses = null;

  String issues = null;

  String organizationAdministration = null;

  InstallationPermissions();

  @override
  String toString() {
    return 'InstallationPermissions[deployments=$deployments, checks=$checks, metadata=$metadata, contents=$contents, pullRequests=$pullRequests, statuses=$statuses, issues=$issues, organizationAdministration=$organizationAdministration, ]';
  }

  InstallationPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deployments = json['deployments'];
    checks = json['checks'];
    metadata = json['metadata'];
    contents = json['contents'];
    pullRequests = json['pull_requests'];
    statuses = json['statuses'];
    issues = json['issues'];
    organizationAdministration = json['organization_administration'];
  }

  Map<String, dynamic> toJson() {
    return {
      'deployments': deployments,
      'checks': checks,
      'metadata': metadata,
      'contents': contents,
      'pull_requests': pullRequests,
      'statuses': statuses,
      'issues': issues,
      'organization_administration': organizationAdministration
     };
  }

  static List<InstallationPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstallationPermissions>() : json.map((value) => new InstallationPermissions.fromJson(value)).toList();
  }

  static Map<String, InstallationPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstallationPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstallationPermissions.fromJson(value));
    }
    return map;
  }
}
