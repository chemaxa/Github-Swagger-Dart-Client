part of swagger.api;

class InlineResponse4222 {
  
  String message = null;

  List<InlineResponse4221Errors> errors = [];

  String documentationUrl = null;

  InlineResponse4222();

  @override
  String toString() {
    return 'InlineResponse4222[message=$message, errors=$errors, documentationUrl=$documentationUrl, ]';
  }

  InlineResponse4222.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse4222> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4222>() : json.map((value) => new InlineResponse4222.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4222> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4222>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4222.fromJson(value));
    }
    return map;
  }
}
