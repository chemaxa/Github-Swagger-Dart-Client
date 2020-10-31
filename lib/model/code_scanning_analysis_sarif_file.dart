part of swagger.api;

class CodeScanningAnalysisSarifFile {
  
  CodeScanningAnalysisSarifFile();

  @override
  String toString() {
    return 'CodeScanningAnalysisSarifFile[]';
  }

  CodeScanningAnalysisSarifFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAnalysisSarifFile> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAnalysisSarifFile>() : json.map((value) => new CodeScanningAnalysisSarifFile.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAnalysisSarifFile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAnalysisSarifFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAnalysisSarifFile.fromJson(value));
    }
    return map;
  }
}
