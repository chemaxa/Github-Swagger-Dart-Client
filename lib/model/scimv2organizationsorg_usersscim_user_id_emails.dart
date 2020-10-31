part of swagger.api;

class Scimv2organizationsorgUsersscimUserIdEmails {
  
  String type = null;

  String value = null;

  bool primary = null;

  Scimv2organizationsorgUsersscimUserIdEmails();

  @override
  String toString() {
    return 'Scimv2organizationsorgUsersscimUserIdEmails[type=$type, value=$value, primary=$primary, ]';
  }

  Scimv2organizationsorgUsersscimUserIdEmails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    value = json['value'];
    primary = json['primary'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'value': value,
      'primary': primary
     };
  }

  static List<Scimv2organizationsorgUsersscimUserIdEmails> listFromJson(List<dynamic> json) {
    return json == null ? new List<Scimv2organizationsorgUsersscimUserIdEmails>() : json.map((value) => new Scimv2organizationsorgUsersscimUserIdEmails.fromJson(value)).toList();
  }

  static Map<String, Scimv2organizationsorgUsersscimUserIdEmails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Scimv2organizationsorgUsersscimUserIdEmails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Scimv2organizationsorgUsersscimUserIdEmails.fromJson(value));
    }
    return map;
  }
}
