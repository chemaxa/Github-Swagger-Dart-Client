part of swagger.api;

class Body74 {
  
  CodeScanningAnalysisCommitSha commitSha = null;

  CodeScanningAnalysisRef ref = null;

  CodeScanningAnalysisSarifFile sarif = null;
/* The base directory used in the analysis, as it appears in the SARIF file. This property is used to convert file paths from absolute to relative, so that alerts can be mapped to their correct location in the repository. */
  String checkoutUri = null;
/* The time that the analysis run began. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. */
  DateTime startedAt = null;

  CodeScanningAnalysisToolName toolName = null;

  Body74();

  @override
  String toString() {
    return 'Body74[commitSha=$commitSha, ref=$ref, sarif=$sarif, checkoutUri=$checkoutUri, startedAt=$startedAt, toolName=$toolName, ]';
  }

  Body74.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commitSha = new CodeScanningAnalysisCommitSha.fromJson(json['commit_sha']);
    ref = new CodeScanningAnalysisRef.fromJson(json['ref']);
    sarif = new CodeScanningAnalysisSarifFile.fromJson(json['sarif']);
    checkoutUri = json['checkout_uri'];
    startedAt = new DateTime.fromJson(json['started_at']);
    toolName = new CodeScanningAnalysisToolName.fromJson(json['tool_name']);
  }

  Map<String, dynamic> toJson() {
    return {
      'commit_sha': commitSha,
      'ref': ref,
      'sarif': sarif,
      'checkout_uri': checkoutUri,
      'started_at': startedAt,
      'tool_name': toolName
     };
  }

  static List<Body74> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body74>() : json.map((value) => new Body74.fromJson(value)).toList();
  }

  static Map<String, Body74> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body74>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body74.fromJson(value));
    }
    return map;
  }
}
