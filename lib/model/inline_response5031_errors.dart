part of swagger.api;

class InlineResponse5031Errors {
  
  String code = null;

  String message = null;

  InlineResponse5031Errors();

  @override
  String toString() {
    return 'InlineResponse5031Errors[code=$code, message=$message, ]';
  }

  InlineResponse5031Errors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message
     };
  }

  static List<InlineResponse5031Errors> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse5031Errors>() : json.map((value) => new InlineResponse5031Errors.fromJson(value)).toList();
  }

  static Map<String, InlineResponse5031Errors> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse5031Errors>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse5031Errors.fromJson(value));
    }
    return map;
  }
}
