part of swagger.api;

class CodeScanningAlertDismissedReason {
  
  CodeScanningAlertDismissedReason();

  @override
  String toString() {
    return 'CodeScanningAlertDismissedReason[]';
  }

  CodeScanningAlertDismissedReason.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertDismissedReason> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertDismissedReason>() : json.map((value) => new CodeScanningAlertDismissedReason.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertDismissedReason> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertDismissedReason>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertDismissedReason.fromJson(value));
    }
    return map;
  }
}
