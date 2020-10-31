part of swagger.api;

class InlineResponse202 {
  
  String message = null;

  InlineResponse202();

  @override
  String toString() {
    return 'InlineResponse202[message=$message, ]';
  }

  InlineResponse202.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message
     };
  }

  static List<InlineResponse202> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse202>() : json.map((value) => new InlineResponse202.fromJson(value)).toList();
  }

  static Map<String, InlineResponse202> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse202>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse202.fromJson(value));
    }
    return map;
  }
}
