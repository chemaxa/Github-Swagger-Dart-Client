part of swagger.api;

class OneOfscimuserOperationsValue {
  
  OneOfscimuserOperationsValue();

  @override
  String toString() {
    return 'OneOfscimuserOperationsValue[]';
  }

  OneOfscimuserOperationsValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfscimuserOperationsValue> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfscimuserOperationsValue>() : json.map((value) => new OneOfscimuserOperationsValue.fromJson(value)).toList();
  }

  static Map<String, OneOfscimuserOperationsValue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfscimuserOperationsValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfscimuserOperationsValue.fromJson(value));
    }
    return map;
  }
}
