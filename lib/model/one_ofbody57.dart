part of swagger.api;

class OneOfbody57 {
  
  OneOfbody57();

  @override
  String toString() {
    return 'OneOfbody57[]';
  }

  OneOfbody57.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfbody57> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfbody57>() : json.map((value) => new OneOfbody57.fromJson(value)).toList();
  }

  static Map<String, OneOfbody57> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfbody57>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfbody57.fromJson(value));
    }
    return map;
  }
}
