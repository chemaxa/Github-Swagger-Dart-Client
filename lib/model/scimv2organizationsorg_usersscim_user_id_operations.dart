part of swagger.api;

class Scimv2organizationsorgUsersscimUserIdOperations {
  
  String op = null;
  //enum opEnum {  add,  remove,  replace,  };

  String path = null;

  OneOfscimv2organizationsorgUsersscimUserIdOperationsValue value = null;

  Scimv2organizationsorgUsersscimUserIdOperations();

  @override
  String toString() {
    return 'Scimv2organizationsorgUsersscimUserIdOperations[op=$op, path=$path, value=$value, ]';
  }

  Scimv2organizationsorgUsersscimUserIdOperations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    op = json['op'];
    path = json['path'];
    value = new OneOfscimv2organizationsorgUsersscimUserIdOperationsValue.fromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {
      'op': op,
      'path': path,
      'value': value
     };
  }

  static List<Scimv2organizationsorgUsersscimUserIdOperations> listFromJson(List<dynamic> json) {
    return json == null ? new List<Scimv2organizationsorgUsersscimUserIdOperations>() : json.map((value) => new Scimv2organizationsorgUsersscimUserIdOperations.fromJson(value)).toList();
  }

  static Map<String, Scimv2organizationsorgUsersscimUserIdOperations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Scimv2organizationsorgUsersscimUserIdOperations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Scimv2organizationsorgUsersscimUserIdOperations.fromJson(value));
    }
    return map;
  }
}
