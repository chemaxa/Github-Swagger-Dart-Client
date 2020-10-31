part of swagger.api;

class InlineResponse4223 {
  
  String message = null;

  List<InlineResponse4221Errors> errors = [];

  String documentationUrl = null;

  InlineResponse4223();

  @override
  String toString() {
    return 'InlineResponse4223[message=$message, errors=$errors, documentationUrl=$documentationUrl, ]';
  }

  InlineResponse4223.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    errors = InlineResponse4221Errors.listFromJson(json['errors']);
    documentationUrl = json['documentation_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'errors': errors,
      'documentation_url': documentationUrl
     };
  }

  static List<InlineResponse4223> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4223>() : json.map((value) => new InlineResponse4223.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4223> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4223>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4223.fromJson(value));
    }
    return map;
  }
}
