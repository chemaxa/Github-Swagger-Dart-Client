part of swagger.api;

class MarketplacePurchase {
  
  String url = null;

  String type = null;

  int id = null;

  String login = null;

  String organizationBillingEmail = null;

  MarketplacepurchaseMarketplacePendingChange marketplacePendingChange = null;

  MarketplacepurchaseMarketplacePurchase marketplacePurchase = null;

  MarketplacePurchase();

  @override
  String toString() {
    return 'MarketplacePurchase[url=$url, type=$type, id=$id, login=$login, organizationBillingEmail=$organizationBillingEmail, marketplacePendingChange=$marketplacePendingChange, marketplacePurchase=$marketplacePurchase, ]';
  }

  MarketplacePurchase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    type = json['type'];
    id = json['id'];
    login = json['login'];
    organizationBillingEmail = json['organization_billing_email'];
    marketplacePendingChange = new MarketplacepurchaseMarketplacePendingChange.fromJson(json['marketplace_pending_change']);
    marketplacePurchase = new MarketplacepurchaseMarketplacePurchase.fromJson(json['marketplace_purchase']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'type': type,
      'id': id,
      'login': login,
      'organization_billing_email': organizationBillingEmail,
      'marketplace_pending_change': marketplacePendingChange,
      'marketplace_purchase': marketplacePurchase
     };
  }

  static List<MarketplacePurchase> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketplacePurchase>() : json.map((value) => new MarketplacePurchase.fromJson(value)).toList();
  }

  static Map<String, MarketplacePurchase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketplacePurchase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketplacePurchase.fromJson(value));
    }
    return map;
  }
}
