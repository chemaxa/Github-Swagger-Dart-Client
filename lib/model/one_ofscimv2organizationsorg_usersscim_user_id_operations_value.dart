part of swagger.api;

class OneOfscimv2organizationsorgUsersscimUserIdOperationsValue {
  
  OneOfscimv2organizationsorgUsersscimUserIdOperationsValue();

  @override
  String toString() {
    return 'OneOfscimv2organizationsorgUsersscimUserIdOperationsValue[]';
  }

  OneOfscimv2organizationsorgUsersscimUserIdOperationsValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfscimv2organizationsorgUsersscimUserIdOperationsValue> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfscimv2organizationsorgUsersscimUserIdOperationsValue>() : json.map((value) => new OneOfscimv2organizationsorgUsersscimUserIdOperationsValue.fromJson(value)).toList();
  }

  static Map<String, OneOfscimv2organizationsorgUsersscimUserIdOperationsValue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfscimv2organizationsorgUsersscimUserIdOperationsValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfscimv2organizationsorgUsersscimUserIdOperationsValue.fromJson(value));
    }
    return map;
  }
}
