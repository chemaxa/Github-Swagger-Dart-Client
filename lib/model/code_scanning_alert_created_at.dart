part of swagger.api;

class CodeScanningAlertCreatedAt {
  
  CodeScanningAlertCreatedAt();

  @override
  String toString() {
    return 'CodeScanningAlertCreatedAt[]';
  }

  CodeScanningAlertCreatedAt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertCreatedAt> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertCreatedAt>() : json.map((value) => new CodeScanningAlertCreatedAt.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertCreatedAt> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertCreatedAt>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertCreatedAt.fromJson(value));
    }
    return map;
  }
}
