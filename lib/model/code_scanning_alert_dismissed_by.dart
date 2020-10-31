part of swagger.api;

class CodeScanningAlertDismissedBy {
  
  CodeScanningAlertDismissedBy();

  @override
  String toString() {
    return 'CodeScanningAlertDismissedBy[]';
  }

  CodeScanningAlertDismissedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertDismissedBy> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertDismissedBy>() : json.map((value) => new CodeScanningAlertDismissedBy.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertDismissedBy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertDismissedBy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertDismissedBy.fromJson(value));
    }
    return map;
  }
}
