part of swagger.api;

class CombinedBillingUsage {
  /* Numbers of days left in billing cycle. */
  int daysLeftInBillingCycle = null;
/* Estimated storage space (GB) used in billing cycle. */
  int estimatedPaidStorageForMonth = null;
/* Estimated sum of free and paid storage space (GB) used in billing cycle. */
  int estimatedStorageForMonth = null;

  CombinedBillingUsage();

  @override
  String toString() {
    return 'CombinedBillingUsage[daysLeftInBillingCycle=$daysLeftInBillingCycle, estimatedPaidStorageForMonth=$estimatedPaidStorageForMonth, estimatedStorageForMonth=$estimatedStorageForMonth, ]';
  }

  CombinedBillingUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    daysLeftInBillingCycle = json['days_left_in_billing_cycle'];
    estimatedPaidStorageForMonth = json['estimated_paid_storage_for_month'];
    estimatedStorageForMonth = json['estimated_storage_for_month'];
  }

  Map<String, dynamic> toJson() {
    return {
      'days_left_in_billing_cycle': daysLeftInBillingCycle,
      'estimated_paid_storage_for_month': estimatedPaidStorageForMonth,
      'estimated_storage_for_month': estimatedStorageForMonth
     };
  }

  static List<CombinedBillingUsage> listFromJson(List<dynamic> json) {
    return json == null ? new List<CombinedBillingUsage>() : json.map((value) => new CombinedBillingUsage.fromJson(value)).toList();
  }

  static Map<String, CombinedBillingUsage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CombinedBillingUsage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CombinedBillingUsage.fromJson(value));
    }
    return map;
  }
}
