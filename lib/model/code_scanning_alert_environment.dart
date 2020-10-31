part of swagger.api;

class CodeScanningAlertEnvironment {
  
  CodeScanningAlertEnvironment();

  @override
  String toString() {
    return 'CodeScanningAlertEnvironment[]';
  }

  CodeScanningAlertEnvironment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertEnvironment> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertEnvironment>() : json.map((value) => new CodeScanningAlertEnvironment.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertEnvironment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertEnvironment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertEnvironment.fromJson(value));
    }
    return map;
  }
}
