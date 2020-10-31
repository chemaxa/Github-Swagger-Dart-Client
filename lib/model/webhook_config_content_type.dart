part of swagger.api;

class WebhookConfigContentType {
  
  WebhookConfigContentType();

  @override
  String toString() {
    return 'WebhookConfigContentType[]';
  }

  WebhookConfigContentType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<WebhookConfigContentType> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebhookConfigContentType>() : json.map((value) => new WebhookConfigContentType.fromJson(value)).toList();
  }

  static Map<String, WebhookConfigContentType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebhookConfigContentType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebhookConfigContentType.fromJson(value));
    }
    return map;
  }
}
