part of swagger.api;

class BranchrestrictionpolicyPermissions {
  
  String metadata = null;

  String contents = null;

  String issues = null;

  String singleFile = null;

  BranchrestrictionpolicyPermissions();

  @override
  String toString() {
    return 'BranchrestrictionpolicyPermissions[metadata=$metadata, contents=$contents, issues=$issues, singleFile=$singleFile, ]';
  }

  BranchrestrictionpolicyPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    metadata = json['metadata'];
    contents = json['contents'];
    issues = json['issues'];
    singleFile = json['single_file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'metadata': metadata,
      'contents': contents,
      'issues': issues,
      'single_file': singleFile
     };
  }

  static List<BranchrestrictionpolicyPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchrestrictionpolicyPermissions>() : json.map((value) => new BranchrestrictionpolicyPermissions.fromJson(value)).toList();
  }

  static Map<String, BranchrestrictionpolicyPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchrestrictionpolicyPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchrestrictionpolicyPermissions.fromJson(value));
    }
    return map;
  }
}
