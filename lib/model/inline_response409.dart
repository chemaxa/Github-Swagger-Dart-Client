part of swagger.api;

class InlineResponse409 {
  
  String message = null;

  String documentationUrl = null;

  InlineResponse409();

  @override
  String toString() {
    return 'InlineResponse409[message=$message, documentationUrl=$documentationUrl, ]';
  }

  InlineResponse409.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse409> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse409>() : json.map((value) => new InlineResponse409.fromJson(value)).toList();
  }

  static Map<String, InlineResponse409> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse409>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse409.fromJson(value));
    }
    return map;
  }
}
