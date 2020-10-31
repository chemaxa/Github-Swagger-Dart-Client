part of swagger.api;

class Scimv2enterprisesenterpriseUsersEmails {
  /* The email address. */
  String value = null;
/* The type of email address. */
  String type = null;
/* Whether this email address is the primary address. */
  bool primary = null;

  Scimv2enterprisesenterpriseUsersEmails();

  @override
  String toString() {
    return 'Scimv2enterprisesenterpriseUsersEmails[value=$value, type=$type, primary=$primary, ]';
  }

  Scimv2enterprisesenterpriseUsersEmails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = json['value'];
    type = json['type'];
    primary = json['primary'];
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'type': type,
      'primary': primary
     };
  }

  static List<Scimv2enterprisesenterpriseUsersEmails> listFromJson(List<dynamic> json) {
    return json == null ? new List<Scimv2enterprisesenterpriseUsersEmails>() : json.map((value) => new Scimv2enterprisesenterpriseUsersEmails.fromJson(value)).toList();
  }

  static Map<String, Scimv2enterprisesenterpriseUsersEmails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Scimv2enterprisesenterpriseUsersEmails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Scimv2enterprisesenterpriseUsersEmails.fromJson(value));
    }
    return map;
  }
}
