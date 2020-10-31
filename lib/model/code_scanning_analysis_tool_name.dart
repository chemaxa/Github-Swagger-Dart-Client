part of swagger.api;

class CodeScanningAnalysisToolName {
  
  CodeScanningAnalysisToolName();

  @override
  String toString() {
    return 'CodeScanningAnalysisToolName[]';
  }

  CodeScanningAnalysisToolName.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAnalysisToolName> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAnalysisToolName>() : json.map((value) => new CodeScanningAnalysisToolName.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAnalysisToolName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAnalysisToolName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAnalysisToolName.fromJson(value));
    }
    return map;
  }
}
