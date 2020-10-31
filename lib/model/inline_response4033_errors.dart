part of swagger.api;

class InlineResponse4033Errors {
  
  String code = null;

  String message = null;

  String resource = null;

  String field = null;

  InlineResponse4033Errors();

  @override
  String toString() {
    return 'InlineResponse4033Errors[code=$code, message=$message, resource=$resource, field=$field, ]';
  }

  InlineResponse4033Errors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    message = json['message'];
    resource = json['resource'];
    field = json['field'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
      'resource': resource,
      'field': field
     };
  }

  static List<InlineResponse4033Errors> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4033Errors>() : json.map((value) => new InlineResponse4033Errors.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4033Errors> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4033Errors>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4033Errors.fromJson(value));
    }
    return map;
  }
}
