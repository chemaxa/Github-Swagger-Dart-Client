part of swagger.api;

class CodeScanningAlertUrl {
  
  CodeScanningAlertUrl();

  @override
  String toString() {
    return 'CodeScanningAlertUrl[]';
  }

  CodeScanningAlertUrl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertUrl> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertUrl>() : json.map((value) => new CodeScanningAlertUrl.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertUrl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertUrl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertUrl.fromJson(value));
    }
    return map;
  }
}
