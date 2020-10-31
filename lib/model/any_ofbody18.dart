part of swagger.api;

class AnyOfbody18 {
  
  AnyOfbody18();

  @override
  String toString() {
    return 'AnyOfbody18[]';
  }

  AnyOfbody18.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AnyOfbody18> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnyOfbody18>() : json.map((value) => new AnyOfbody18.fromJson(value)).toList();
  }

  static Map<String, AnyOfbody18> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnyOfbody18>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnyOfbody18.fromJson(value));
    }
    return map;
  }
}
