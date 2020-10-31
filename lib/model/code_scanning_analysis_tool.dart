part of swagger.api;

class CodeScanningAnalysisTool {
  
  CodeScanningAnalysisToolName name = null;
/* The version of the tool used to detect the alert. */
  String version = null;

  CodeScanningAnalysisTool();

  @override
  String toString() {
    return 'CodeScanningAnalysisTool[name=$name, version=$version, ]';
  }

  CodeScanningAnalysisTool.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = new CodeScanningAnalysisToolName.fromJson(json['name']);
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'version': version
     };
  }

  static List<CodeScanningAnalysisTool> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAnalysisTool>() : json.map((value) => new CodeScanningAnalysisTool.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAnalysisTool> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAnalysisTool>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAnalysisTool.fromJson(value));
    }
    return map;
  }
}
