part of swagger.api;

class WebhookConfig {
  
  WebhookConfigUrl url = null;

  WebhookConfigContentType contentType = null;

  WebhookConfigSecret secret = null;

  WebhookConfigInsecureSsl insecureSsl = null;

  WebhookConfig();

  @override
  String toString() {
    return 'WebhookConfig[url=$url, contentType=$contentType, secret=$secret, insecureSsl=$insecureSsl, ]';
  }

  WebhookConfig.fromJson(Map<String, dynamic> json) {
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

  static List<WebhookConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebhookConfig>() : json.map((value) => new WebhookConfig.fromJson(value)).toList();
  }

  static Map<String, WebhookConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebhookConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebhookConfig.fromJson(value));
    }
    return map;
  }
}
