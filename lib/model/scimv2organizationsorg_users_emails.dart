part of swagger.api;

class Scimv2organizationsorgUsersEmails {
  
  String value = null;

  bool primary = null;

  String type = null;

  Scimv2organizationsorgUsersEmails();

  @override
  String toString() {
    return 'Scimv2organizationsorgUsersEmails[value=$value, primary=$primary, type=$type, ]';
  }

  Scimv2organizationsorgUsersEmails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = json['value'];
    primary = json['primary'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'primary': primary,
      'type': type
     };
  }

  static List<Scimv2organizationsorgUsersEmails> listFromJson(List<dynamic> json) {
    return json == null ? new List<Scimv2organizationsorgUsersEmails>() : json.map((value) => new Scimv2organizationsorgUsersEmails.fromJson(value)).toList();
  }

  static Map<String, Scimv2organizationsorgUsersEmails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Scimv2organizationsorgUsersEmails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Scimv2organizationsorgUsersEmails.fromJson(value));
    }
    return map;
  }
}
