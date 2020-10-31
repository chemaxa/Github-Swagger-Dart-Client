part of swagger.api;

class InlineResponse4221Errors {
  
  String code = null;

  String field = null;

  String resource = null;

  InlineResponse4221Errors();

  @override
  String toString() {
    return 'InlineResponse4221Errors[code=$code, field=$field, resource=$resource, ]';
  }

  InlineResponse4221Errors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    field = json['field'];
    resource = json['resource'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'field': field,
      'resource': resource
     };
  }

  static List<InlineResponse4221Errors> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4221Errors>() : json.map((value) => new InlineResponse4221Errors.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4221Errors> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4221Errors>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4221Errors.fromJson(value));
    }
    return map;
  }
}
