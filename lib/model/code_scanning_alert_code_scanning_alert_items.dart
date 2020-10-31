part of swagger.api;

class CodeScanningAlertCodeScanningAlertItems {
  
  CodeScanningAlertNumber number = null;

  CodeScanningAlertCreatedAt createdAt = null;

  CodeScanningAlertUrl url = null;

  CodeScanningAlertHtmlUrl htmlUrl = null;

  CodeScanningAlertState state = null;

  CodeScanningAlertDismissedBy dismissedBy = null;

  CodeScanningAlertDismissedAt dismissedAt = null;

  CodeScanningAlertDismissedReason dismissedReason = null;

  CodeScanningAlertRule rule = null;

  CodeScanningAnalysisTool tool = null;

  CodeScanningAlertCodeScanningAlertItems();

  @override
  String toString() {
    return 'CodeScanningAlertCodeScanningAlertItems[number=$number, createdAt=$createdAt, url=$url, htmlUrl=$htmlUrl, state=$state, dismissedBy=$dismissedBy, dismissedAt=$dismissedAt, dismissedReason=$dismissedReason, rule=$rule, tool=$tool, ]';
  }

  CodeScanningAlertCodeScanningAlertItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number = new CodeScanningAlertNumber.fromJson(json['number']);
    createdAt = new CodeScanningAlertCreatedAt.fromJson(json['created_at']);
    url = new CodeScanningAlertUrl.fromJson(json['url']);
    htmlUrl = new CodeScanningAlertHtmlUrl.fromJson(json['html_url']);
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
      'state': state,
      'dismissed_by': dismissedBy,
      'dismissed_at': dismissedAt,
      'dismissed_reason': dismissedReason,
      'rule': rule,
      'tool': tool
     };
  }

  static List<CodeScanningAlertCodeScanningAlertItems> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeScanningAlertCodeScanningAlertItems>() : json.map((value) => new CodeScanningAlertCodeScanningAlertItems.fromJson(value)).toList();
  }

  static Map<String, CodeScanningAlertCodeScanningAlertItems> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeScanningAlertCodeScanningAlertItems>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeScanningAlertCodeScanningAlertItems.fromJson(value));
    }
    return map;
  }
}
