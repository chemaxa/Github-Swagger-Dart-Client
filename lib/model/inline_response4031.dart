part of swagger.api;

class InlineResponse4031 {
  
  String message = null;

  String documentationUrl = null;

  InlineResponse4031();

  @override
  String toString() {
    return 'InlineResponse4031[message=$message, documentationUrl=$documentationUrl, ]';
  }

  InlineResponse4031.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse4031> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4031>() : json.map((value) => new InlineResponse4031.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4031> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4031>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4031.fromJson(value));
    }
    return map;
  }
}
