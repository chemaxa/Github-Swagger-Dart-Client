part of swagger.api;

class GpgkeyEmails {
  
  String email = null;

  bool verified = null;

  GpgkeyEmails();

  @override
  String toString() {
    return 'GpgkeyEmails[email=$email, verified=$verified, ]';
  }

  GpgkeyEmails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'verified': verified
     };
  }

  static List<GpgkeyEmails> listFromJson(List<dynamic> json) {
    return json == null ? new List<GpgkeyEmails>() : json.map((value) => new GpgkeyEmails.fromJson(value)).toList();
  }

  static Map<String, GpgkeyEmails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GpgkeyEmails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GpgkeyEmails.fromJson(value));
    }
    return map;
  }
}
