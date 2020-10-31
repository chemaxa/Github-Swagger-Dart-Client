part of swagger.api;

class CodeScanningAlertCodeScanningAlert {
  
  CodeScanningAlertNumber number = null;

  CodeScanningAlertCreatedAt createdAt = null;

  CodeScanningAlertUrl url = null;

  CodeScanningAlertHtmlUrl htmlUrl = null;

  CodeScanningAlertInstances instances = null;

  CodeScanningAlertState state = null;

  CodeScanningAlertDismissedBy dismissedBy = null;

  CodeScanningAlertDismissedAt dismissedAt = null;

  CodeScanningAlertDismissedReason dismissedReason = null;

  CodeScanningAlertRule rule = null;

  CodeScanningAnalysisTool tool = null;

  CodeScanningAlertCodeScanningAlert();

  @override
  String toString() {
    return 'CodeScanningAlertCodeScanningAlert[number=$number, createdAt=$createdAt, url=$url, htmlUrl=$htmlUrl, instances=$instances, state=$state, dismissedBy=$dismissedBy, dismissedAt=$dismissedAt, dismissedReason=$dismissedReason, rule=$rule, tool=$tool, ]';
  }

  CodeScanningAlertCodeScanningAlert.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number = new CodeScanningAlertNumber.fromJson(json['number']);
    createdAt = new CodeScanningAlertCreatedAt.fromJson(json['created_at']);
    url = new CodeScanningAlertUrl.fromJson(json['url']);
    htmlUrl = new CodeScanningAlertHtmlUrl.fromJson(json['html_url']);
    instances = new CodeScanningAlertInstances.fromJson(json['instances']);
    state = new CodeScanningAlertState.fromJson(json['state']);
    dismissedBy = new CodeScanningAlertDismissedBy.fromJson(json['dismissed_by']);
    dismissedAt = new CodeScanningAlertDismissedAt.fromJson(json['dismissed_at']);
    dismissedReason = new CodeScanningAlertDismissedReason.fromJson(json['dismissed_reason']);
    rule = new CodeScanningAlertRule.fromJson(json['rule']);
    tool = new CodeScanningAnalysisTool.fromJson(json['tool']);
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'created_at': createdAt,
      'url': url,
      'html_url': htmlUrl,
      'instances': instances,
      'state': state,
      'dismissed_by': dismissedBy,
      'dismissed_at': dismissedAt,
      'dismissed_reason': dismissedReason,
      'rule': rule,
      'tool': tool
     };
  }

  static List<CodeScanningAlertCodeScanningAlert> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertCodeScanningAlert>() : json.map((value) => new CodeScanningAlertCodeScanningAlert.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertCodeScanningAlert> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertCodeScanningAlert>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertCodeScanningAlert.fromJson(value));
    }
    return map;
  }
}
