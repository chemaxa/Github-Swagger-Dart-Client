part of swagger.api;

class SimplecommitAuthor {
  
  String name = null;

  String email = null;

  SimplecommitAuthor();

  @override
  String toString() {
    return 'SimplecommitAuthor[name=$name, email=$email, ]';
  }

  SimplecommitAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email
     };
  }

  static List<SimplecommitAuthor> listFromJson(List<dynamic> json) {
    return json == null ? new List<SimplecommitAuthor>() : json.map((value) => new SimplecommitAuthor.fromJson(value)).toList();
  }

  static Map<String, SimplecommitAuthor> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SimplecommitAuthor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SimplecommitAuthor.fromJson(value));
    }
    return map;
  }
}
