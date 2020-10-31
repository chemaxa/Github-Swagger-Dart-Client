part of swagger.api;

class InlineResponse404 {
  
  String message = null;

  String documentationUrl = null;

  InlineResponse404();

  @override
  String toString() {
    return 'InlineResponse404[message=$message, documentationUrl=$documentationUrl, ]';
  }

  InlineResponse404.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    documentationUrl = json['documentation_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'documentation_url': documentationUrl
     };
  }

  static List<InlineResponse404> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse404>() : json.map((value) => new InlineResponse404.fromJson(value)).toList();
  }

  static Map<String, InlineResponse404> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse404>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse404.fromJson(value));
    }
    return map;
  }
}
