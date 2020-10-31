part of swagger.api;

class ValidationerrorErrors {
  
  String resource = null;

  String field = null;

  String message = null;

  String code = null;

  int index = null;

  OneOfvalidationerrorErrorsValue value = null;

  ValidationerrorErrors();

  @override
  String toString() {
    return 'ValidationerrorErrors[resource=$resource, field=$field, message=$message, code=$code, index=$index, value=$value, ]';
  }

  ValidationerrorErrors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resource = json['resource'];
    field = json['field'];
    message = json['message'];
    code = json['code'];
    index = json['index'];
    value = new OneOfvalidationerrorErrorsValue.fromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {
      'resource': resource,
      'field': field,
      'message': message,
      'code': code,
      'index': index,
      'value': value
     };
  }

  static List<ValidationerrorErrors> listFromJson(List<dynamic> json) {
    return json == null ? new List<ValidationerrorErrors>() : json.map((value) => new ValidationerrorErrors.fromJson(value)).toList();
  }

  static Map<String, ValidationerrorErrors> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ValidationerrorErrors>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ValidationerrorErrors.fromJson(value));
    }
    return map;
  }
}
