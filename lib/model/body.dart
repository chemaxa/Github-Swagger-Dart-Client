part of swagger.api;

class Body {
  
  WebhookConfigUrl url = null;

  WebhookConfigContentType contentType = null;

  WebhookConfigSecret secret = null;

  WebhookConfigInsecureSsl insecureSsl = null;

  Body();

  @override
  String toString() {
    return 'Body[url=$url, contentType=$contentType, secret=$secret, insecureSsl=$insecureSsl, ]';
  }

  Body.fromJson(Map<String, dynamic> json) {
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

  static List<Body> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body>() : json.map((value) => new Body.fromJson(value)).toList();
  }

  static Map<String, Body> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body.fromJson(value));
    }
    return map;
  }
}
