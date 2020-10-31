part of swagger.api;

class OneOfbody166 {
  
  OneOfbody166();

  @override
  String toString() {
    return 'OneOfbody166[]';
  }

  OneOfbody166.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfbody166> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfbody166>() : json.map((value) => new OneOfbody166.fromJson(value)).toList();
  }

  static Map<String, OneOfbody166> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfbody166>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfbody166.fromJson(value));
    }
    return map;
  }
}
