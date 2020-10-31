part of swagger.api;

class CodeScanningAnalysisEnvironment {
  
  CodeScanningAnalysisEnvironment();

  @override
  String toString() {
    return 'CodeScanningAnalysisEnvironment[]';
  }

  CodeScanningAnalysisEnvironment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAnalysisEnvironment> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAnalysisEnvironment>() : json.map((value) => new CodeScanningAnalysisEnvironment.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAnalysisEnvironment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAnalysisEnvironment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAnalysisEnvironment.fromJson(value));
    }
    return map;
  }
}
