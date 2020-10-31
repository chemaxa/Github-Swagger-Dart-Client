part of swagger.api;

class ScimuserlistenterpriseEmails {
  
  String value = null;

  bool primary = null;

  String type = null;

  ScimuserlistenterpriseEmails();

  @override
  String toString() {
    return 'ScimuserlistenterpriseEmails[value=$value, primary=$primary, type=$type, ]';
  }

  ScimuserlistenterpriseEmails.fromJson(Map<String, dynamic> json) {
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

  static List<ScimuserlistenterpriseEmails> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimuserlistenterpriseEmails>() : json.map((value) => new ScimuserlistenterpriseEmails.fromJson(value)).toList();
  }

  static Map<String, ScimuserlistenterpriseEmails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimuserlistenterpriseEmails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimuserlistenterpriseEmails.fromJson(value));
    }
    return map;
  }
}
