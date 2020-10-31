part of swagger.api;

class CodeScanningAnalysisAnalysisKey {
  
  CodeScanningAnalysisAnalysisKey();

  @override
  String toString() {
    return 'CodeScanningAnalysisAnalysisKey[]';
  }

  CodeScanningAnalysisAnalysisKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAnalysisAnalysisKey> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAnalysisAnalysisKey>() : json.map((value) => new CodeScanningAnalysisAnalysisKey.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAnalysisAnalysisKey> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAnalysisAnalysisKey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAnalysisAnalysisKey.fromJson(value));
    }
    return map;
  }
}
