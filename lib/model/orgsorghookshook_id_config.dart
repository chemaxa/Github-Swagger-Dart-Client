part of swagger.api;

class OrgsorghookshookIdConfig {
  
  WebhookConfigUrl url = null;

  WebhookConfigContentType contentType = null;

  WebhookConfigSecret secret = null;

  WebhookConfigInsecureSsl insecureSsl = null;

  OrgsorghookshookIdConfig();

  @override
  String toString() {
    return 'OrgsorghookshookIdConfig[url=$url, contentType=$contentType, secret=$secret, insecureSsl=$insecureSsl, ]';
  }

  OrgsorghookshookIdConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = new WebhookConfigUrl.fromJson(json['url']);
    contentType = new WebhookConfigContentType.fromJson(json['content_type']);
    secret = new WebhookConfigSecret.fromJson(json['secret']);
    insecureSsl = new WebhookConfigInsecureSsl.fromJson(json['insecure_ssl']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'content_type': contentType,
      'secret': secret,
      'insecure_ssl': insecureSsl
     };
  }

  static List<OrgsorghookshookIdConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrgsorghookshookIdConfig>() : json.map((value) => new OrgsorghookshookIdConfig.fromJson(value)).toList();
  }

  static Map<String, OrgsorghookshookIdConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrgsorghookshookIdConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrgsorghookshookIdConfig.fromJson(value));
    }
    return map;
  }
}
