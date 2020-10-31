part of swagger.api;

class MarketplaceAccount {
  
  String url = null;

  int id = null;

  String type = null;

  String nodeId = null;

  String login = null;

  String email = null;

  String organizationBillingEmail = null;

  MarketplaceAccount();

  @override
  String toString() {
    return 'MarketplaceAccount[url=$url, id=$id, type=$type, nodeId=$nodeId, login=$login, email=$email, organizationBillingEmail=$organizationBillingEmail, ]';
  }

  MarketplaceAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    id = json['id'];
    type = json['type'];
    nodeId = json['node_id'];
    login = json['login'];
    email = json['email'];
    organizationBillingEmail = json['organization_billing_email'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'id': id,
      'type': type,
      'node_id': nodeId,
      'login': login,
      'email': email,
      'organization_billing_email': organizationBillingEmail
     };
  }

  static List<MarketplaceAccount> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarketplaceAccount>() : json.map((value) => new MarketplaceAccount.fromJson(value)).toList();
  }

  static Map<String, MarketplaceAccount> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarketplaceAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarketplaceAccount.fromJson(value));
    }
    return map;
  }
}
