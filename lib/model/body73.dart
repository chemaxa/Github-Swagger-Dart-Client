part of swagger.api;

class Body73 {
  
  CodeScanningAlertSetState state = null;

  CodeScanningAlertDismissedReason dismissedReason = null;

  Body73();

  @override
  String toString() {
    return 'Body73[state=$state, dismissedReason=$dismissedReason, ]';
  }

  Body73.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = new CodeScanningAlertSetState.fromJson(json['state']);
    dismissedReason = new CodeScanningAlertDismissedReason.fromJson(json['dismissed_reason']);
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'dismissed_reason': dismissedReason
     };
  }

  static List<Body73> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body73>() : json.map((value) => new Body73.fromJson(value)).toList();
  }

  static Map<String, Body73> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body73>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body73.fromJson(value));
    }
    return map;
  }
}
