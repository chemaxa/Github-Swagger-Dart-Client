part of swagger.api;

class InlineResponse503 {
  
  String code = null;

  String message = null;

  String documentationUrl = null;

  InlineResponse503();

  @override
  String toString() {
    return 'InlineResponse503[code=$code, message=$message, documentationUrl=$documentationUrl, ]';
  }

  InlineResponse503.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    message = json['message'];
    documentationUrl = json['documentation_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
      'documentation_url': documentationUrl
     };
  }

  static List<InlineResponse503> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse503>() : json.map((value) => new InlineResponse503.fromJson(value)).toList();
  }

  static Map<String, InlineResponse503> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse503>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse503.fromJson(value));
    }
    return map;
  }
}
