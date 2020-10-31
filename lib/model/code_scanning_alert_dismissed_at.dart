part of swagger.api;

class CodeScanningAlertDismissedAt {
  
  CodeScanningAlertDismissedAt();

  @override
  String toString() {
    return 'CodeScanningAlertDismissedAt[]';
  }

  CodeScanningAlertDismissedAt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertDismissedAt> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertDismissedAt>() : json.map((value) => new CodeScanningAlertDismissedAt.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertDismissedAt> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertDismissedAt>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertDismissedAt.fromJson(value));
    }
    return map;
  }
}
