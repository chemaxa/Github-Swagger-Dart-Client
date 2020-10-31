part of swagger.api;

class CodeScanningAnalysisCommitSha {
  
  CodeScanningAnalysisCommitSha();

  @override
  String toString() {
    return 'CodeScanningAnalysisCommitSha[]';
  }

  CodeScanningAnalysisCommitSha.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAnalysisCommitSha> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAnalysisCommitSha>() : json.map((value) => new CodeScanningAnalysisCommitSha.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAnalysisCommitSha> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAnalysisCommitSha>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAnalysisCommitSha.fromJson(value));
    }
    return map;
  }
}
