part of swagger.api;

class ActionsBillingUsage {
  /* The sum of the free and paid GitHub Actions minutes used. */
  int totalMinutesUsed = null;
/* The total paid GitHub Actions minutes used. */
  int totalPaidMinutesUsed = null;
/* The amount of free GitHub Actions minutes available. */
  int includedMinutes = null;

  ActionsbillingusageMinutesUsedBreakdown minutesUsedBreakdown = null;

  ActionsBillingUsage();

  @override
  String toString() {
    return 'ActionsBillingUsage[totalMinutesUsed=$totalMinutesUsed, totalPaidMinutesUsed=$totalPaidMinutesUsed, includedMinutes=$includedMinutes, minutesUsedBreakdown=$minutesUsedBreakdown, ]';
  }

  ActionsBillingUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalMinutesUsed = json['total_minutes_used'];
    totalPaidMinutesUsed = json['total_paid_minutes_used'];
    includedMinutes = json['included_minutes'];
    minutesUsedBreakdown = new ActionsbillingusageMinutesUsedBreakdown.fromJson(json['minutes_used_breakdown']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_minutes_used': totalMinutesUsed,
      'total_paid_minutes_used': totalPaidMinutesUsed,
      'included_minutes': includedMinutes,
      'minutes_used_breakdown': minutesUsedBreakdown
     };
  }

  static List<ActionsBillingUsage> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActionsBillingUsage>() : json.map((value) => new ActionsBillingUsage.fromJson(value)).toList();
  }

  static Map<String, ActionsBillingUsage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActionsBillingUsage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActionsBillingUsage.fromJson(value));
    }
    return map;
  }
}
