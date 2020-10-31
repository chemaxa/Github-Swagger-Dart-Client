part of swagger.api;

class OneOfvalidationerrorErrorsValue {
  
  OneOfvalidationerrorErrorsValue();

  @override
  String toString() {
    return 'OneOfvalidationerrorErrorsValue[]';
  }

  OneOfvalidationerrorErrorsValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfvalidationerrorErrorsValue> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfvalidationerrorErrorsValue>() : json.map((value) => new OneOfvalidationerrorErrorsValue.fromJson(value)).toList();
  }

  static Map<String, OneOfvalidationerrorErrorsValue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfvalidationerrorErrorsValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfvalidationerrorErrorsValue.fromJson(value));
    }
    return map;
  }
}
