part of swagger.api;

class OneOfbody17Public {
  
  OneOfbody17Public();

  @override
  String toString() {
    return 'OneOfbody17Public[]';
  }

  OneOfbody17Public.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfbody17Public> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfbody17Public>() : json.map((value) => new OneOfbody17Public.fromJson(value)).toList();
  }

  static Map<String, OneOfbody17Public> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfbody17Public>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfbody17Public.fromJson(value));
    }
    return map;
  }
}
