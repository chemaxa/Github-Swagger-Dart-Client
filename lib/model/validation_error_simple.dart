part of swagger.api;

class ValidationErrorSimple {
  
  String message = null;

  String documentationUrl = null;

  List<String> errors = [];

  ValidationErrorSimple();

  @override
  String toString() {
    return 'ValidationErrorSimple[message=$message, documentationUrl=$documentationUrl, errors=$errors, ]';
  }

  ValidationErrorSimple.fromJson(Map<String, dynamic> json) {
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

  static List<ValidationErrorSimple> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidationErrorSimple>() : json.map((value) => new ValidationErrorSimple.fromJson(value)).toList();
  }

  static Map<String, ValidationErrorSimple> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ValidationErrorSimple>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ValidationErrorSimple.fromJson(value));
    }
    return map;
  }
}
