part of swagger.api;

class WebhookConfigSecret {
  
  WebhookConfigSecret();

  @override
  String toString() {
    return 'WebhookConfigSecret[]';
  }

  WebhookConfigSecret.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<WebhookConfigSecret> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebhookConfigSecret>() : json.map((value) => new WebhookConfigSecret.fromJson(value)).toList();
  }

  static Map<String, WebhookConfigSecret> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebhookConfigSecret>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebhookConfigSecret.fromJson(value));
    }
    return map;
  }
}
