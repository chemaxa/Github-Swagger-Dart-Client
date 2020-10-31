part of swagger.api;

class Body140 {
  /* An array of topics to add to the repository. Pass one or more topics to _replace_ the set of existing topics. Send an empty array (`[]`) to clear all topics from the repository. **Note:** Topic `names` cannot contain uppercase letters. */
  List<String> names = [];

  Body140();

  @override
  String toString() {
    return 'Body140[names=$names, ]';
  }

  Body140.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    names = (json['names'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'names': names
     };
  }

  static List<Body140> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body140>() : json.map((value) => new Body140.fromJson(value)).toList();
  }

  static Map<String, Body140> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body140>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body140.fromJson(value));
    }
    return map;
  }
}
