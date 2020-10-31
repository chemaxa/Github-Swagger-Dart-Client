part of swagger.api;

class Body68 {
  /* Require branches to be up to date before merging. */
  bool strict = null;
/* The list of status checks to require in order to merge into this branch */
  List<String> contexts = [];

  Body68();

  @override
  String toString() {
    return 'Body68[strict=$strict, contexts=$contexts, ]';
  }

  Body68.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    strict = json['strict'];
    contexts = (json['contexts'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'strict': strict,
      'contexts': contexts
     };
  }

  static List<Body68> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body68>() : json.map((value) => new Body68.fromJson(value)).toList();
  }

  static Map<String, Body68> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body68>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body68.fromJson(value));
    }
    return map;
  }
}
