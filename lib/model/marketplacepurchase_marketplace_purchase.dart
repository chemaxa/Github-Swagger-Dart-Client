part of swagger.api;

class MarketplacepurchaseMarketplacePurchase {
  
  String billingCycle = null;

  String nextBillingDate = null;

  bool isInstalled = null;

  int unitCount = null;

  bool onFreeTrial = null;

  String freeTrialEndsOn = null;

  String updatedAt = null;

  MarketplaceListingPlan plan = null;

  MarketplacepurchaseMarketplacePurchase();

  @override
  String toString() {
    return 'MarketplacepurchaseMarketplacePurchase[billingCycle=$billingCycle, nextBillingDate=$nextBillingDate, isInstalled=$isInstalled, unitCount=$unitCount, onFreeTrial=$onFreeTrial, freeTrialEndsOn=$freeTrialEndsOn, updatedAt=$updatedAt, plan=$plan, ]';
  }

  MarketplacepurchaseMarketplacePurchase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    billingCycle = json['billing_cycle'];
    nextBillingDate = json['next_billing_date'];
    isInstalled = json['is_installed'];
    unitCount = json['unit_count'];
    onFreeTrial = json['on_free_trial'];
    freeTrialEndsOn = json['free_trial_ends_on'];
    updatedAt = json['updated_at'];
    plan = new MarketplaceListingPlan.fromJson(json['plan']);
  }

  Map<String, dynamic> toJson() {
    return {
      'billing_cycle': billingCycle,
      'next_billing_date': nextBillingDate,
      'is_installed': isInstalled,
      'unit_count': unitCount,
      'on_free_trial': onFreeTrial,
      'free_trial_ends_on': freeTrialEndsOn,
      'updated_at': updatedAt,
      'plan': plan
     };
  }

  static List<MarketplacepurchaseMarketplacePurchase> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketplacepurchaseMarketplacePurchase>() : json.map((value) => new MarketplacepurchaseMarketplacePurchase.fromJson(value)).toList();
  }

  static Map<String, MarketplacepurchaseMarketplacePurchase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketplacepurchaseMarketplacePurchase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketplacepurchaseMarketplacePurchase.fromJson(value));
    }
    return map;
  }
}
