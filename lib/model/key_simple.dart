part of swagger.api;

class KeySimple {
  
  int id = null;

  String key = null;

  KeySimple();

  @override
  String toString() {
    return 'KeySimple[id=$id, key=$key, ]';
  }

  KeySimple.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key': key
     };
  }

  static List<KeySimple> listFromJson(List<dynamic> json) {
    return json == null ? new List<KeySimple>() : json.map((value) => new KeySimple.fromJson(value)).toList();
  }

  static Map<String, KeySimple> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, KeySimple>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new KeySimple.fromJson(value));
    }
    return map;
  }
}
