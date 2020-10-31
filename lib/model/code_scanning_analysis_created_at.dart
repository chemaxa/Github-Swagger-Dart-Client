part of swagger.api;

class CodeScanningAnalysisCreatedAt {
  
  CodeScanningAnalysisCreatedAt();

  @override
  String toString() {
    return 'CodeScanningAnalysisCreatedAt[]';
  }

  CodeScanningAnalysisCreatedAt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAnalysisCreatedAt> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAnalysisCreatedAt>() : json.map((value) => new CodeScanningAnalysisCreatedAt.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAnalysisCreatedAt> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAnalysisCreatedAt>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAnalysisCreatedAt.fromJson(value));
    }
    return map;
  }
}
