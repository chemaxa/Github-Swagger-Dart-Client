part of swagger.api;

class OneOfinlineResponse422 {
  
  OneOfinlineResponse422();

  @override
  String toString() {
    return 'OneOfinlineResponse422[]';
  }

  OneOfinlineResponse422.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfinlineResponse422> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfinlineResponse422>() : json.map((value) => new OneOfinlineResponse422.fromJson(value)).toList();
  }

  static Map<String, OneOfinlineResponse422> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfinlineResponse422>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfinlineResponse422.fromJson(value));
    }
    return map;
  }
}
