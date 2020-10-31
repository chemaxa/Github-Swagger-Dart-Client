part of swagger.api;

class CodeScanningAnalysisRef {
  
  CodeScanningAnalysisRef();

  @override
  String toString() {
    return 'CodeScanningAnalysisRef[]';
  }

  CodeScanningAnalysisRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAnalysisRef> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAnalysisRef>() : json.map((value) => new CodeScanningAnalysisRef.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAnalysisRef> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAnalysisRef>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAnalysisRef.fromJson(value));
    }
    return map;
  }
}
