part of swagger.api;

class OrghookConfig {
  
  String url = null;

  String insecureSsl = null;

  String contentType = null;

  String secret = null;

  OrghookConfig();

  @override
  String toString() {
    return 'OrghookConfig[url=$url, insecureSsl=$insecureSsl, contentType=$contentType, secret=$secret, ]';
  }

  OrghookConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    insecureSsl = json['insecure_ssl'];
    contentType = json['content_type'];
    secret = json['secret'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'insecure_ssl': insecureSsl,
      'content_type': contentType,
      'secret': secret
     };
  }

  static List<OrghookConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrghookConfig>() : json.map((value) => new OrghookConfig.fromJson(value)).toList();
  }

  static Map<String, OrghookConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrghookConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrghookConfig.fromJson(value));
    }
    return map;
  }
}
