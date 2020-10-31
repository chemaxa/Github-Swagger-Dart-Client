part of swagger.api;

class PackagesBillingUsage {
  /* Sum of the free and paid storage space (GB) for GitHuub Packages. */
  int totalGigabytesBandwidthUsed = null;
/* Total paid storage space (GB) for GitHuub Packages. */
  int totalPaidGigabytesBandwidthUsed = null;
/* Free storage space (GB) for GitHub Packages. */
  int includedGigabytesBandwidth = null;

  PackagesBillingUsage();

  @override
  String toString() {
    return 'PackagesBillingUsage[totalGigabytesBandwidthUsed=$totalGigabytesBandwidthUsed, totalPaidGigabytesBandwidthUsed=$totalPaidGigabytesBandwidthUsed, includedGigabytesBandwidth=$includedGigabytesBandwidth, ]';
  }

  PackagesBillingUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalGigabytesBandwidthUsed = json['total_gigabytes_bandwidth_used'];
    totalPaidGigabytesBandwidthUsed = json['total_paid_gigabytes_bandwidth_used'];
    includedGigabytesBandwidth = json['included_gigabytes_bandwidth'];
  }

  Map<String, dynamic> toJson() {
    return {
      'total_gigabytes_bandwidth_used': totalGigabytesBandwidthUsed,
      'total_paid_gigabytes_bandwidth_used': totalPaidGigabytesBandwidthUsed,
      'included_gigabytes_bandwidth': includedGigabytesBandwidth
     };
  }

  static List<PackagesBillingUsage> listFromJson(List<dynamic> json) {
    return json == null ? new List<PackagesBillingUsage>() : json.map((value) => new PackagesBillingUsage.fromJson(value)).toList();
  }

  static Map<String, PackagesBillingUsage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PackagesBillingUsage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PackagesBillingUsage.fromJson(value));
    }
    return map;
  }
}
