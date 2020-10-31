part of swagger.api;

class InlineResponse422 {
  
  InlineResponse422();

  @override
  String toString() {
    return 'InlineResponse422[]';
  }

  InlineResponse422.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<InlineResponse422> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse422>() : json.map((value) => new InlineResponse422.fromJson(value)).toList();
  }

  static Map<String, InlineResponse422> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse422>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse422.fromJson(value));
    }
    return map;
  }
}
