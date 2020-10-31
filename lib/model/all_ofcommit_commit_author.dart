part of swagger.api;

class AllOfcommitCommitAuthor {
  
  String name = null;

  String email = null;

  String date = null;

  AllOfcommitCommitAuthor();

  @override
  String toString() {
    return 'AllOfcommitCommitAuthor[name=$name, email=$email, date=$date, ]';
  }

  AllOfcommitCommitAuthor.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfcommitCommitAuthor> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommitCommitAuthor>() : json.map((value) => new AllOfcommitCommitAuthor.fromJson(value)).toList();
  }

  static Map<String, AllOfcommitCommitAuthor> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommitCommitAuthor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommitCommitAuthor.fromJson(value));
    }
    return map;
  }
}
