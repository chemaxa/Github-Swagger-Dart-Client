part of swagger.api;

class ReposownerrepohookshookIdConfig {
  
  WebhookConfigUrl url = null;

  WebhookConfigContentType contentType = null;

  WebhookConfigSecret secret = null;

  WebhookConfigInsecureSsl insecureSsl = null;

  String address = null;

  String room = null;

  ReposownerrepohookshookIdConfig();

  @override
  String toString() {
    return 'ReposownerrepohookshookIdConfig[url=$url, contentType=$contentType, secret=$secret, insecureSsl=$insecureSsl, address=$address, room=$room, ]';
  }

  ReposownerrepohookshookIdConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = new WebhookConfigUrl.fromJson(json['url']);
    contentType = new WebhookConfigContentType.fromJson(json['content_type']);
    secret = new WebhookConfigSecret.fromJson(json['secret']);
    insecureSsl = new WebhookConfigInsecureSsl.fromJson(json['insecure_ssl']);
    address = json['address'];
    room = json['room'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'content_type': contentType,
      'secret': secret,
      'insecure_ssl': insecureSsl,
      'address': address,
      'room': room
     };
  }

  static List<ReposownerrepohookshookIdConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepohookshookIdConfig>() : json.map((value) => new ReposownerrepohookshookIdConfig.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepohookshookIdConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepohookshookIdConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepohookshookIdConfig.fromJson(value));
    }
    return map;
  }
}
