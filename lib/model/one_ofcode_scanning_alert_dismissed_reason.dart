part of swagger.api;

class OneOfcodeScanningAlertDismissedReason {
  
  OneOfcodeScanningAlertDismissedReason();

  @override
  String toString() {
    return 'OneOfcodeScanningAlertDismissedReason[]';
  }

  OneOfcodeScanningAlertDismissedReason.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfcodeScanningAlertDismissedReason> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfcodeScanningAlertDismissedReason>() : json.map((value) => new OneOfcodeScanningAlertDismissedReason.fromJson(value)).toList();
  }

  static Map<String, OneOfcodeScanningAlertDismissedReason> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfcodeScanningAlertDismissedReason>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfcodeScanningAlertDismissedReason.fromJson(value));
    }
    return map;
  }
}
