part of swagger.api;

class OneOfcodeScanningAlertDismissedBy {
  
  OneOfcodeScanningAlertDismissedBy();

  @override
  String toString() {
    return 'OneOfcodeScanningAlertDismissedBy[]';
  }

  OneOfcodeScanningAlertDismissedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfcodeScanningAlertDismissedBy> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfcodeScanningAlertDismissedBy>() : json.map((value) => new OneOfcodeScanningAlertDismissedBy.fromJson(value)).toList();
  }

  static Map<String, OneOfcodeScanningAlertDismissedBy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfcodeScanningAlertDismissedBy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfcodeScanningAlertDismissedBy.fromJson(value));
    }
    return map;
  }
}
