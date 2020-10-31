part of swagger.api;

class HookConfig {
  
  String email = null;

  String password = null;

  String room = null;

  String subdomain = null;

  WebhookConfigUrl url = null;

  WebhookConfigInsecureSsl insecureSsl = null;

  WebhookConfigContentType contentType = null;

  String digest = null;

  WebhookConfigSecret secret = null;

  String token = null;

  HookConfig();

  @override
  String toString() {
    return 'HookConfig[email=$email, password=$password, room=$room, subdomain=$subdomain, url=$url, insecureSsl=$insecureSsl, contentType=$contentType, digest=$digest, secret=$secret, token=$token, ]';
  }

  HookConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    password = json['password'];
    room = json['room'];
    subdomain = json['subdomain'];
    url = new WebhookConfigUrl.fromJson(json['url']);
    insecureSsl = new WebhookConfigInsecureSsl.fromJson(json['insecure_ssl']);
    contentType = new WebhookConfigContentType.fromJson(json['content_type']);
    digest = json['digest'];
    secret = new WebhookConfigSecret.fromJson(json['secret']);
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'room': room,
      'subdomain': subdomain,
      'url': url,
      'insecure_ssl': insecureSsl,
      'content_type': contentType,
      'digest': digest,
      'secret': secret,
      'token': token
     };
  }

  static List<HookConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<HookConfig>() : json.map((value) => new HookConfig.fromJson(value)).toList();
  }

  static Map<String, HookConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HookConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HookConfig.fromJson(value));
    }
    return map;
  }
}
