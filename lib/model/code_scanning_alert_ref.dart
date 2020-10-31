part of swagger.api;

class CodeScanningAlertRef {
  
  CodeScanningAlertRef();

  @override
  String toString() {
    return 'CodeScanningAlertRef[]';
  }

  CodeScanningAlertRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertRef> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertRef>() : json.map((value) => new CodeScanningAlertRef.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertRef> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertRef>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertRef.fromJson(value));
    }
    return map;
  }
}
