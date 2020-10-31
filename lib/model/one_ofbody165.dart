part of swagger.api;

class OneOfbody165 {
  
  OneOfbody165();

  @override
  String toString() {
    return 'OneOfbody165[]';
  }

  OneOfbody165.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfbody165> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfbody165>() : json.map((value) => new OneOfbody165.fromJson(value)).toList();
  }

  static Map<String, OneOfbody165> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfbody165>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfbody165.fromJson(value));
    }
    return map;
  }
}
