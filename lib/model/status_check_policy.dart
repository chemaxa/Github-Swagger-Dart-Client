part of swagger.api;

class StatusCheckPolicy {
  
  String url = null;

  bool strict = null;

  List<String> contexts = [];

  String contextsUrl = null;

  StatusCheckPolicy();

  @override
  String toString() {
    return 'StatusCheckPolicy[url=$url, strict=$strict, contexts=$contexts, contextsUrl=$contextsUrl, ]';
  }

  StatusCheckPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    strict = json['strict'];
    contexts = (json['contexts'] as List).map((item) => item as String).toList();
    contextsUrl = json['contexts_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'strict': strict,
      'contexts': contexts,
      'contexts_url': contextsUrl
     };
  }

  static List<StatusCheckPolicy> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatusCheckPolicy>() : json.map((value) => new StatusCheckPolicy.fromJson(value)).toList();
  }

  static Map<String, StatusCheckPolicy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatusCheckPolicy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatusCheckPolicy.fromJson(value));
    }
    return map;
  }
}
