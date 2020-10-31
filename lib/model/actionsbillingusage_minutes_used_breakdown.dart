part of swagger.api;

class ActionsbillingusageMinutesUsedBreakdown {
  /* Total minutes used on Ubuntu runner machines. */
  int UBUNTU = null;
/* Total minutes used on macOS runner machines. */
  int MACOS = null;
/* Total minutes used on Windows runner machines. */
  int WINDOWS = null;

  ActionsbillingusageMinutesUsedBreakdown();

  @override
  String toString() {
    return 'ActionsbillingusageMinutesUsedBreakdown[UBUNTU=$UBUNTU, MACOS=$MACOS, WINDOWS=$WINDOWS, ]';
  }

  ActionsbillingusageMinutesUsedBreakdown.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    UBUNTU = json['UBUNTU'];
    MACOS = json['MACOS'];
    WINDOWS = json['WINDOWS'];
  }

  Map<String, dynamic> toJson() {
    return {
      'UBUNTU': UBUNTU,
      'MACOS': MACOS,
      'WINDOWS': WINDOWS
     };
  }

  static List<ActionsbillingusageMinutesUsedBreakdown> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActionsbillingusageMinutesUsedBreakdown>() : json.map((value) => new ActionsbillingusageMinutesUsedBreakdown.fromJson(value)).toList();
  }

  static Map<String, ActionsbillingusageMinutesUsedBreakdown> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActionsbillingusageMinutesUsedBreakdown>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActionsbillingusageMinutesUsedBreakdown.fromJson(value));
    }
    return map;
  }
}
