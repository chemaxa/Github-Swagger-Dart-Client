part of swagger.api;

class OneOfinlineResponse20027 {
  
  OneOfinlineResponse20027();

  @override
  String toString() {
    return 'OneOfinlineResponse20027[]';
  }

  OneOfinlineResponse20027.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfinlineResponse20027> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfinlineResponse20027>() : json.map((value) => new OneOfinlineResponse20027.fromJson(value)).toList();
  }

  static Map<String, OneOfinlineResponse20027> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfinlineResponse20027>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfinlineResponse20027.fromJson(value));
    }
    return map;
  }
}
