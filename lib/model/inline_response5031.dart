part of swagger.api;

class InlineResponse5031 {
  
  String code = null;

  String message = null;

  String documentationUrl = null;

  List<InlineResponse5031Errors> errors = [];

  InlineResponse5031();

  @override
  String toString() {
    return 'InlineResponse5031[code=$code, message=$message, documentationUrl=$documentationUrl, errors=$errors, ]';
  }

  InlineResponse5031.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    message = json['message'];
    documentationUrl = json['documentation_url'];
    errors = InlineResponse5031Errors.listFromJson(json['errors']);
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
      'documentation_url': documentationUrl,
      'errors': errors
     };
  }

  static List<InlineResponse5031> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse5031>() : json.map((value) => new InlineResponse5031.fromJson(value)).toList();
  }

  static Map<String, InlineResponse5031> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse5031>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse5031.fromJson(value));
    }
    return map;
  }
}
