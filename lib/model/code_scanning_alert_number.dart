part of swagger.api;

class CodeScanningAlertNumber {
  
  CodeScanningAlertNumber();

  @override
  String toString() {
    return 'CodeScanningAlertNumber[]';
  }

  CodeScanningAlertNumber.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeScanningAlertNumber> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertNumber>() : json.map((value) => new CodeScanningAlertNumber.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertNumber> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertNumber>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertNumber.fromJson(value));
    }
    return map;
  }
}
