part of swagger.api;

class OrgsorghooksConfig {
  
  WebhookConfigUrl url = null;

  WebhookConfigContentType contentType = null;

  WebhookConfigSecret secret = null;

  WebhookConfigInsecureSsl insecureSsl = null;

  String username = null;

  String password = null;

  OrgsorghooksConfig();

  @override
  String toString() {
    return 'OrgsorghooksConfig[url=$url, contentType=$contentType, secret=$secret, insecureSsl=$insecureSsl, username=$username, password=$password, ]';
  }

  OrgsorghooksConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = new WebhookConfigUrl.fromJson(json['url']);
    contentType = new WebhookConfigContentType.fromJson(json['content_type']);
    secret = new WebhookConfigSecret.fromJson(json['secret']);
    insecureSsl = new WebhookConfigInsecureSsl.fromJson(json['insecure_ssl']);
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'content_type': contentType,
      'secret': secret,
      'insecure_ssl': insecureSsl,
      'username': username,
      'password': password
     };
  }

  static List<OrgsorghooksConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrgsorghooksConfig>() : json.map((value) => new OrgsorghooksConfig.fromJson(value)).toList();
  }

  static Map<String, OrgsorghooksConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrgsorghooksConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrgsorghooksConfig.fromJson(value));
    }
    return map;
  }
}
