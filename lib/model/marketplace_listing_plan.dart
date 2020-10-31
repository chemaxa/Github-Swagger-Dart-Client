part of swagger.api;

class MarketplaceListingPlan {
  
  String url = null;

  String accountsUrl = null;

  int id = null;

  int number = null;

  String name = null;

  String description = null;

  int monthlyPriceInCents = null;

  int yearlyPriceInCents = null;

  String priceModel = null;

  bool hasFreeTrial = null;

  String unitName = null;

  String state = null;

  List<String> bullets = [];

  MarketplaceListingPlan();

  @override
  String toString() {
    return 'MarketplaceListingPlan[url=$url, accountsUrl=$accountsUrl, id=$id, number=$number, name=$name, description=$description, monthlyPriceInCents=$monthlyPriceInCents, yearlyPriceInCents=$yearlyPriceInCents, priceModel=$priceModel, hasFreeTrial=$hasFreeTrial, unitName=$unitName, state=$state, bullets=$bullets, ]';
  }

  MarketplaceListingPlan.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    accountsUrl = json['accounts_url'];
    id = json['id'];
    number = json['number'];
    name = json['name'];
    description = json['description'];
    monthlyPriceInCents = json['monthly_price_in_cents'];
    yearlyPriceInCents = json['yearly_price_in_cents'];
    priceModel = json['price_model'];
    hasFreeTrial = json['has_free_trial'];
    unitName = json['unit_name'];
    state = json['state'];
    bullets = (json['bullets'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'accounts_url': accountsUrl,
      'id': id,
      'number': number,
      'name': name,
      'description': description,
      'monthly_price_in_cents': monthlyPriceInCents,
      'yearly_price_in_cents': yearlyPriceInCents,
      'price_model': priceModel,
      'has_free_trial': hasFreeTrial,
      'unit_name': unitName,
      'state': state,
      'bullets': bullets
     };
  }

  static List<MarketplaceListingPlan> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketplaceListingPlan>() : json.map((value) => new MarketplaceListingPlan.fromJson(value)).toList();
  }

  static Map<String, MarketplaceListingPlan> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketplaceListingPlan>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketplaceListingPlan.fromJson(value));
    }
    return map;
  }
}
