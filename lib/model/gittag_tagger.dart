part of swagger.api;

class GittagTagger {
  
  String date = null;

  String email = null;

  String name = null;

  GittagTagger();

  @override
  String toString() {
    return 'GittagTagger[date=$date, email=$email, name=$name, ]';
  }

  GittagTagger.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = json['date'];
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date,
      'email': email,
      'name': name
     };
  }

  static List<GittagTagger> listFromJson(List<dynamic> json) {
    return json == null ? new List<GittagTagger>() : json.map((value) => new GittagTagger.fromJson(value)).toList();
  }

  static Map<String, GittagTagger> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GittagTagger>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GittagTagger.fromJson(value));
    }
    return map;
  }
}
