part of swagger.api;

class OneOfworkflowId {
  
  OneOfworkflowId();

  @override
  String toString() {
    return 'OneOfworkflowId[]';
  }

  OneOfworkflowId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfworkflowId> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfworkflowId>() : json.map((value) => new OneOfworkflowId.fromJson(value)).toList();
  }

  static Map<String, OneOfworkflowId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfworkflowId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfworkflowId.fromJson(value));
    }
    return map;
  }
}
