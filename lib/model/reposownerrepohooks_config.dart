part of swagger.api;

class ReposownerrepohooksConfig {
  
  WebhookConfigUrl url = null;

  WebhookConfigContentType contentType = null;

  WebhookConfigSecret secret = null;

  WebhookConfigInsecureSsl insecureSsl = null;

  String token = null;

  String digest = null;

  ReposownerrepohooksConfig();

  @override
  String toString() {
    return 'ReposownerrepohooksConfig[url=$url, contentType=$contentType, secret=$secret, insecureSsl=$insecureSsl, token=$token, digest=$digest, ]';
  }

  ReposownerrepohooksConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = new WebhookConfigUrl.fromJson(json['url']);
    contentType = new WebhookConfigContentType.fromJson(json['content_type']);
    secret = new WebhookConfigSecret.fromJson(json['secret']);
    insecureSsl = new WebhookConfigInsecureSsl.fromJson(json['insecure_ssl']);
    token = json['token'];
    digest = json['digest'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'content_type': contentType,
      'secret': secret,
      'insecure_ssl': insecureSsl,
      'token': token,
      'digest': digest
     };
  }

  static List<ReposownerrepohooksConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepohooksConfig>() : json.map((value) => new ReposownerrepohooksConfig.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepohooksConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepohooksConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepohooksConfig.fromJson(value));
    }
    return map;
  }
}
