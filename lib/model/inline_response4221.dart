part of swagger.api;

class InlineResponse4221 {
  
  String message = null;

  List<InlineResponse4221Errors> errors = [];

  InlineResponse4221();

  @override
  String toString() {
    return 'InlineResponse4221[message=$message, errors=$errors, ]';
  }

  InlineResponse4221.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    errors = InlineResponse4221Errors.listFromJson(json['errors']);
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'errors': errors
     };
  }

  static List<InlineResponse4221> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse4221>() : json.map((value) => new InlineResponse4221.fromJson(value)).toList();
  }

  static Map<String, InlineResponse4221> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse4221>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse4221.fromJson(value));
    }
    return map;
  }
}
