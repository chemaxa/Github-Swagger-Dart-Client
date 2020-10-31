part of swagger.api;

class UserMarketplacePurchase {
  
  String billingCycle = null;

  DateTime nextBillingDate = null;

  int unitCount = null;

  bool onFreeTrial = null;

  DateTime freeTrialEndsOn = null;

  DateTime updatedAt = null;

  MarketplaceAccount account = null;

  MarketplaceListingPlan plan = null;

  UserMarketplacePurchase();

  @override
  String toString() {
    return 'UserMarketplacePurchase[billingCycle=$billingCycle, nextBillingDate=$nextBillingDate, unitCount=$unitCount, onFreeTrial=$onFreeTrial, freeTrialEndsOn=$freeTrialEndsOn, updatedAt=$updatedAt, account=$account, plan=$plan, ]';
  }

  UserMarketplacePurchase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    billingCycle = json['billing_cycle'];
    nextBillingDate = json['next_billing_date'] == null ? null : DateTime.parse(json['next_billing_date']);
    unitCount = json['unit_count'];
    onFreeTrial = json['on_free_trial'];
    freeTrialEndsOn = json['free_trial_ends_on'] == null ? null : DateTime.parse(json['free_trial_ends_on']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    account = new MarketplaceAccount.fromJson(json['account']);
    plan = new MarketplaceListingPlan.fromJson(json['plan']);
  }

  Map<String, dynamic> toJson() {
    return {
      'billing_cycle': billingCycle,
      'next_billing_date': nextBillingDate == null ? '' : nextBillingDate.toUtc().toIso8601String(),
      'unit_count': unitCount,
      'on_free_trial': onFreeTrial,
      'free_trial_ends_on': freeTrialEndsOn == null ? '' : freeTrialEndsOn.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'account': account,
      'plan': plan
     };
  }

  static List<UserMarketplacePurchase> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserMarketplacePurchase>() : json.map((value) => new UserMarketplacePurchase.fromJson(value)).toList();
  }

  static Map<String, UserMarketplacePurchase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserMarketplacePurchase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserMarketplacePurchase.fromJson(value));
    }
    return map;
  }
}
