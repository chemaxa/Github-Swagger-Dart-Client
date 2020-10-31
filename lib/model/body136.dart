part of swagger.api;

class Body136 {
  /* The file name of the asset. */
  String name = null;
/* An alternate short description of the asset. Used in place of the filename. */
  String label = null;

  String state = null;

  Body136();

  @override
  String toString() {
    return 'Body136[name=$name, label=$label, state=$state, ]';
  }

  Body136.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    label = json['label'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'label': label,
      'state': state
     };
  }

  static List<Body136> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body136>() : json.map((value) => new Body136.fromJson(value)).toList();
  }

  static Map<String, Body136> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body136>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body136.fromJson(value));
    }
    return map;
  }
}
