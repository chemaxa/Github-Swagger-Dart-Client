part of swagger.api;

class CodeScanningAlertRule {
  /* A unique identifier for the rule used to detect the alert. */
  String id = null;
/* The severity of the alert. */
  String severity = null;
  //enum severityEnum {  none,  note,  warning,  error,  };
/* A short description of the rule used to detect the alert. */
  String description = null;

  CodeScanningAlertRule();

  @override
  String toString() {
    return 'CodeScanningAlertRule[id=$id, severity=$severity, description=$description, ]';
  }

  CodeScanningAlertRule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    severity = json['severity'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'severity': severity,
      'description': description
     };
  }

  static List<CodeScanningAlertRule> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertRule>() : json.map((value) => new CodeScanningAlertRule.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertRule> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertRule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertRule.fromJson(value));
    }
    return map;
  }
}
