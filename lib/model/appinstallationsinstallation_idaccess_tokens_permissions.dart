part of swagger.api;

class AppinstallationsinstallationIdaccessTokensPermissions {
  
  String contents = null;

  String issues = null;

  String deployments = null;

  String singleFile = null;

  String defNotARepo = null;

  AppinstallationsinstallationIdaccessTokensPermissions();

  @override
  String toString() {
    return 'AppinstallationsinstallationIdaccessTokensPermissions[contents=$contents, issues=$issues, deployments=$deployments, singleFile=$singleFile, defNotARepo=$defNotARepo, ]';
  }

  AppinstallationsinstallationIdaccessTokensPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    contents = json['contents'];
    issues = json['issues'];
    deployments = json['deployments'];
    singleFile = json['single_file'];
    defNotARepo = json['def_not_a_repo'];
  }

  Map<String, dynamic> toJson() {
    return {
      'contents': contents,
      'issues': issues,
      'deployments': deployments,
      'single_file': singleFile,
      'def_not_a_repo': defNotARepo
     };
  }

  static List<AppinstallationsinstallationIdaccessTokensPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<AppinstallationsinstallationIdaccessTokensPermissions>() : json.map((value) => new AppinstallationsinstallationIdaccessTokensPermissions.fromJson(value)).toList();
  }

  static Map<String, AppinstallationsinstallationIdaccessTokensPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AppinstallationsinstallationIdaccessTokensPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AppinstallationsinstallationIdaccessTokensPermissions.fromJson(value));
    }
    return map;
  }
}
