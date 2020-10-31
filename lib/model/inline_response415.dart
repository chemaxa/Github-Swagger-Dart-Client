part of swagger.api;

class InlineResponse415 {
  
  String message = null;

  String documentationUrl = null;

  InlineResponse415();

  @override
  String toString() {
    return 'InlineResponse415[message=$message, documentationUrl=$documentationUrl, ]';
  }

  InlineResponse415.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse415> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse415>() : json.map((value) => new InlineResponse415.fromJson(value)).toList();
  }

  static Map<String, InlineResponse415> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse415>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse415.fromJson(value));
    }
    return map;
  }
}
