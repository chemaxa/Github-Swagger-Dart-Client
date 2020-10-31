part of swagger.api;

class InstallationtokenPermissions {
  
  String issues = null;

  String contents = null;

  String metadata = null;

  String singleFile = null;

  InstallationtokenPermissions();

  @override
  String toString() {
    return 'InstallationtokenPermissions[issues=$issues, contents=$contents, metadata=$metadata, singleFile=$singleFile, ]';
  }

  InstallationtokenPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    issues = json['issues'];
    contents = json['contents'];
    metadata = json['metadata'];
    singleFile = json['single_file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'issues': issues,
      'contents': contents,
      'metadata': metadata,
      'single_file': singleFile
     };
  }

  static List<InstallationtokenPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstallationtokenPermissions>() : json.map((value) => new InstallationtokenPermissions.fromJson(value)).toList();
  }

  static Map<String, InstallationtokenPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstallationtokenPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstallationtokenPermissions.fromJson(value));
    }
    return map;
  }
}
