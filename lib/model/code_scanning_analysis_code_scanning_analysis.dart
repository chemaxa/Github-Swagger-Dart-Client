part of swagger.api;

class CodeScanningAnalysisCodeScanningAnalysis {
  
  CodeScanningAnalysisCommitSha commitSha = null;

  CodeScanningAnalysisRef ref = null;

  CodeScanningAnalysisAnalysisKey analysisKey = null;

  CodeScanningAnalysisCreatedAt createdAt = null;

  CodeScanningAnalysisToolName toolName = null;

  String error = null;

  CodeScanningAnalysisEnvironment environment = null;

  CodeScanningAnalysisCodeScanningAnalysis();

  @override
  String toString() {
    return 'CodeScanningAnalysisCodeScanningAnalysis[commitSha=$commitSha, ref=$ref, analysisKey=$analysisKey, createdAt=$createdAt, toolName=$toolName, error=$error, environment=$environment, ]';
  }

  CodeScanningAnalysisCodeScanningAnalysis.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commitSha = new CodeScanningAnalysisCommitSha.fromJson(json['commit_sha']);
    ref = new CodeScanningAnalysisRef.fromJson(json['ref']);
    analysisKey = new CodeScanningAnalysisAnalysisKey.fromJson(json['analysis_key']);
    createdAt = new CodeScanningAnalysisCreatedAt.fromJson(json['created_at']);
    toolName = new CodeScanningAnalysisToolName.fromJson(json['tool_name']);
    error = json['error'];
    environment = new CodeScanningAnalysisEnvironment.fromJson(json['environment']);
  }

  Map<String, dynamic> toJson() {
    return {
      'commit_sha': commitSha,
      'ref': ref,
      'analysis_key': analysisKey,
      'created_at': createdAt,
      'tool_name': toolName,
      'error': error,
      'environment': environment
     };
  }

  static List<CodeScanningAnalysisCodeScanningAnalysis> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAnalysisCodeScanningAnalysis>() : json.map((value) => new CodeScanningAnalysisCodeScanningAnalysis.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAnalysisCodeScanningAnalysis> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAnalysisCodeScanningAnalysis>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAnalysisCodeScanningAnalysis.fromJson(value));
    }
    return map;
  }
}
