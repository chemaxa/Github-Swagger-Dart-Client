part of swagger.api;

class Email {
  
  Email();

  @override
  String toString() {
    return 'Email[]';
  }

  Email.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Email> listFromJson(List<dynamic> json) {
    return json == null ? new List<Email>() : json.map((value) => new Email.fromJson(value)).toList();
  }

  static Map<String, Email> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Email>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Email.fromJson(value));
    }
    return map;
  }
}
