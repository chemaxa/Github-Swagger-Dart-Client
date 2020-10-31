part of swagger.api;

class Body148 {
  /* The SCIM schema URIs. */
  List<String> schemas = [];
/* Array of [SCIM operations](https://tools.ietf.org/html/rfc7644#section-3.5.2). */
  List<Object> operations = [];

  Body148();

  @override
  String toString() {
    return 'Body148[schemas=$schemas, operations=$operations, ]';
  }

  Body148.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    operations = Object.listFromJson(json['Operations']);
  }

  Map<String, dynamic> toJson() {
    return {
      'schemas': schemas,
      'Operations': operations
     };
  }

  static List<Body148> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body148>() : json.map((value) => new Body148.fromJson(value)).toList();
  }

  static Map<String, Body148> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body148>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body148.fromJson(value));
    }
    return map;
  }
}
