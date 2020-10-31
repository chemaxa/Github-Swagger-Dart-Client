part of swagger.api;

class CodeScanningAlertInstances {
  
  CodeScanningAlertInstances();

  @override
  String toString() {
    return 'CodeScanningAlertInstances[]';
  }

  CodeScanningAlertInstances.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertInstances> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertInstances>() : json.map((value) => new CodeScanningAlertInstances.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertInstances> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertInstances>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertInstances.fromJson(value));
    }
    return map;
  }
}
