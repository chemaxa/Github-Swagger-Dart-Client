part of swagger.api;

class OneOfemail {
  
  OneOfemail();

  @override
  String toString() {
    return 'OneOfemail[]';
  }

  OneOfemail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfemail> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfemail>() : json.map((value) => new OneOfemail.fromJson(value)).toList();
  }

  static Map<String, OneOfemail> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfemail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfemail.fromJson(value));
    }
    return map;
  }
}
