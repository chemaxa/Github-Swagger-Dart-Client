part of swagger.api;

class ScimuserOperations {
  
  String op = null;
  //enum opEnum {  add,  remove,  replace,  };

  String path = null;

  OneOfscimuserOperationsValue value = null;

  ScimuserOperations();

  @override
  String toString() {
    return 'ScimuserOperations[op=$op, path=$path, value=$value, ]';
  }

  ScimuserOperations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    op = json['op'];
    path = json['path'];
    value = new OneOfscimuserOperationsValue.fromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {
      'op': op,
      'path': path,
      'value': value
     };
  }

  static List<ScimuserOperations> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimuserOperations>() : json.map((value) => new ScimuserOperations.fromJson(value)).toList();
  }

  static Map<String, ScimuserOperations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimuserOperations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimuserOperations.fromJson(value));
    }
    return map;
  }
}
