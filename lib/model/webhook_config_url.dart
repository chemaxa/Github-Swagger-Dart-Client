part of swagger.api;

class WebhookConfigUrl {
  
  WebhookConfigUrl();

  @override
  String toString() {
    return 'WebhookConfigUrl[]';
  }

  WebhookConfigUrl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<WebhookConfigUrl> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebhookConfigUrl>() : json.map((value) => new WebhookConfigUrl.fromJson(value)).toList();
  }

  static Map<String, WebhookConfigUrl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebhookConfigUrl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebhookConfigUrl.fromJson(value));
    }
    return map;
  }
}
