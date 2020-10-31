part of swagger.api;

class ScimuserEmails {
  
  String value = null;

  bool primary = null;

  ScimuserEmails();

  @override
  String toString() {
    return 'ScimuserEmails[value=$value, primary=$primary, ]';
  }

  ScimuserEmails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = json['value'];
    primary = json['primary'];
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'primary': primary
     };
  }

  static List<ScimuserEmails> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimuserEmails>() : json.map((value) => new ScimuserEmails.fromJson(value)).toList();
  }

  static Map<String, ScimuserEmails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimuserEmails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimuserEmails.fromJson(value));
    }
    return map;
  }
}
