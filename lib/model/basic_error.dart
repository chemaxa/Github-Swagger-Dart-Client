part of swagger.api;

class BasicError {
  
  String message = null;

  String documentationUrl = null;

  BasicError();

  @override
  String toString() {
    return 'BasicError[message=$message, documentationUrl=$documentationUrl, ]';
  }

  BasicError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    documentationUrl = json['documentation_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'documentation_url': documentationUrl
     };
  }

  static List<BasicError> listFromJson(List<dynamic> json) {
    return json == null ? new List<BasicError>() : json.map((value) => new BasicError.fromJson(value)).toList();
  }

  static Map<String, BasicError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BasicError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BasicError.fromJson(value));
    }
    return map;
  }
}
