part of swagger.api;

class WebhookConfigInsecureSsl {
  
  WebhookConfigInsecureSsl();

  @override
  String toString() {
    return 'WebhookConfigInsecureSsl[]';
  }

  WebhookConfigInsecureSsl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<WebhookConfigInsecureSsl> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebhookConfigInsecureSsl>() : json.map((value) => new WebhookConfigInsecureSsl.fromJson(value)).toList();
  }

  static Map<String, WebhookConfigInsecureSsl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebhookConfigInsecureSsl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebhookConfigInsecureSsl.fromJson(value));
    }
    return map;
  }
}
