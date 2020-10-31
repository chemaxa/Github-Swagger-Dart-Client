part of swagger.api;

class AnyOfbody118Source {
  
  AnyOfbody118Source();

  @override
  String toString() {
    return 'AnyOfbody118Source[]';
  }

  AnyOfbody118Source.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AnyOfbody118Source> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnyOfbody118Source>() : json.map((value) => new AnyOfbody118Source.fromJson(value)).toList();
  }

  static Map<String, AnyOfbody118Source> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnyOfbody118Source>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnyOfbody118Source.fromJson(value));
    }
    return map;
  }
}
