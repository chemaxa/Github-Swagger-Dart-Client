part of swagger.api;

class CodeScanningAlertHtmlUrl {
  
  CodeScanningAlertHtmlUrl();

  @override
  String toString() {
    return 'CodeScanningAlertHtmlUrl[]';
  }

  CodeScanningAlertHtmlUrl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertHtmlUrl> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertHtmlUrl>() : json.map((value) => new CodeScanningAlertHtmlUrl.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertHtmlUrl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertHtmlUrl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertHtmlUrl.fromJson(value));
    }
    return map;
  }
}
