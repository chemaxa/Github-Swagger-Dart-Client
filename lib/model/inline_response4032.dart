part of swagger.api;

class InlineResponse4032 {
  
  String message = null;

  String documentationUrl = null;

  List<String> errors = [];

  InlineResponse4032();

  @override
  String toString() {
    return 'InlineResponse4032[message=$message, documentationUrl=$documentationUrl, errors=$errors, ]';
  }

  InlineResponse4032.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    documentationUrl = json['documentation_url'];
    errors = (json['errors'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'documentation_url': documentationUrl,
      'errors': errors
     };
  }

  static List<InlineResponse4032> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4032>() : json.map((value) => new InlineResponse4032.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4032> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4032>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4032.fromJson(value));
    }
    return map;
  }
}
