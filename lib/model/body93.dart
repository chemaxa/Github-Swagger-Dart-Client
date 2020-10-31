part of swagger.api;

class Body93 {
  
  WebhookConfigUrl url = null;

  WebhookConfigContentType contentType = null;

  WebhookConfigSecret secret = null;

  WebhookConfigInsecureSsl insecureSsl = null;

  Body93();

  @override
  String toString() {
    return 'Body93[url=$url, contentType=$contentType, secret=$secret, insecureSsl=$insecureSsl, ]';
  }

  Body93.fromJson(Map<String, dynamic> json) {
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

  static List<Body93> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body93>() : json.map((value) => new Body93.fromJson(value)).toList();
  }

  static Map<String, Body93> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body93>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body93.fromJson(value));
    }
    return map;
  }
}
