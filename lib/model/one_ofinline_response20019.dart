part of swagger.api;

class OneOfinlineResponse20019 {
  
  OneOfinlineResponse20019();

  @override
  String toString() {
    return 'OneOfinlineResponse20019[]';
  }

  OneOfinlineResponse20019.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfinlineResponse20019> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfinlineResponse20019>() : json.map((value) => new OneOfinlineResponse20019.fromJson(value)).toList();
  }

  static Map<String, OneOfinlineResponse20019> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfinlineResponse20019>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfinlineResponse20019.fromJson(value));
    }
    return map;
  }
}
