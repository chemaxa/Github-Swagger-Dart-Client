part of swagger.api;

class MarketplacepurchaseMarketplacePendingChange {
  
  bool isInstalled = null;

  String effectiveDate = null;

  int unitCount = null;

  int id = null;

  MarketplaceListingPlan plan = null;

  MarketplacepurchaseMarketplacePendingChange();

  @override
  String toString() {
    return 'MarketplacepurchaseMarketplacePendingChange[isInstalled=$isInstalled, effectiveDate=$effectiveDate, unitCount=$unitCount, id=$id, plan=$plan, ]';
  }

  MarketplacepurchaseMarketplacePendingChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isInstalled = json['is_installed'];
    effectiveDate = json['effective_date'];
    unitCount = json['unit_count'];
    id = json['id'];
    plan = new MarketplaceListingPlan.fromJson(json['plan']);
  }

  Map<String, dynamic> toJson() {
    return {
      'is_installed': isInstalled,
      'effective_date': effectiveDate,
      'unit_count': unitCount,
      'id': id,
      'plan': plan
     };
  }

  static List<MarketplacepurchaseMarketplacePendingChange> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketplacepurchaseMarketplacePendingChange>() : json.map((value) => new MarketplacepurchaseMarketplacePendingChange.fromJson(value)).toList();
  }

  static Map<String, MarketplacepurchaseMarketplacePendingChange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketplacepurchaseMarketplacePendingChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketplacepurchaseMarketplacePendingChange.fromJson(value));
    }
    return map;
  }
}
