part of swagger.api;

class InlineResponse4033 {
  
  String message = null;

  String documentationUrl = null;

  List<InlineResponse4033Errors> errors = [];

  InlineResponse4033();

  @override
  String toString() {
    return 'InlineResponse4033[message=$message, documentationUrl=$documentationUrl, errors=$errors, ]';
  }

  InlineResponse4033.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    documentationUrl = json['documentation_url'];
    errors = InlineResponse4033Errors.listFromJson(json['errors']);
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'documentation_url': documentationUrl,
      'errors': errors
     };
  }

  static List<InlineResponse4033> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4033>() : json.map((value) => new InlineResponse4033.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4033> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4033>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4033.fromJson(value));
    }
    return map;
  }
}
