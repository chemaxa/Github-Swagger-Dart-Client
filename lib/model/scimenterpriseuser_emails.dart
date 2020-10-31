part of swagger.api;

class ScimenterpriseuserEmails {
  
  String value = null;

  String type = null;

  bool primary = null;

  ScimenterpriseuserEmails();

  @override
  String toString() {
    return 'ScimenterpriseuserEmails[value=$value, type=$type, primary=$primary, ]';
  }

  ScimenterpriseuserEmails.fromJson(Map<String, dynamic> json) {
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

  static List<ScimenterpriseuserEmails> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimenterpriseuserEmails>() : json.map((value) => new ScimenterpriseuserEmails.fromJson(value)).toList();
  }

  static Map<String, ScimenterpriseuserEmails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimenterpriseuserEmails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimenterpriseuserEmails.fromJson(value));
    }
    return map;
  }
}
