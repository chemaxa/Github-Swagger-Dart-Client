part of swagger.api;

class GitUser {
  
  String name = null;

  String email = null;

  String date = null;

  GitUser();

  @override
  String toString() {
    return 'GitUser[name=$name, email=$email, date=$date, ]';
  }

  GitUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    email = json['email'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'date': date
     };
  }

  static List<GitUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitUser>() : json.map((value) => new GitUser.fromJson(value)).toList();
  }

  static Map<String, GitUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitUser.fromJson(value));
    }
    return map;
  }
}
