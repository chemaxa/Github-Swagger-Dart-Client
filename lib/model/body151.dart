part of swagger.api;

class Body151 {
  
  List<String> schemas = [];
/* Set of operations to be performed */
  List<Scimv2organizationsorgUsersscimUserIdOperations> operations = [];

  Body151();

  @override
  String toString() {
    return 'Body151[schemas=$schemas, operations=$operations, ]';
  }

  Body151.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    operations = Scimv2organizationsorgUsersscimUserIdOperations.listFromJson(json['Operations']);
  }

  Map<String, dynamic> toJson() {
    return {
      'schemas': schemas,
      'Operations': operations
     };
  }

  static List<Body151> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body151>() : json.map((value) => new Body151.fromJson(value)).toList();
  }

  static Map<String, Body151> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body151>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body151.fromJson(value));
    }
    return map;
  }
}
