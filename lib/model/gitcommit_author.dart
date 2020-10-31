part of swagger.api;

class GitcommitAuthor {
  /* Timestamp of the commit */
  DateTime date = null;
/* Git email address of the user */
  String email = null;
/* Name of the git user */
  String name = null;

  GitcommitAuthor();

  @override
  String toString() {
    return 'GitcommitAuthor[date=$date, email=$email, name=$name, ]';
  }

  GitcommitAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    date = json['date'] == null ? null : DateTime.parse(json['date']);
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date == null ? '' : date.toUtc().toIso8601String(),
      'email': email,
      'name': name
     };
  }

  static List<GitcommitAuthor> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitcommitAuthor>() : json.map((value) => new GitcommitAuthor.fromJson(value)).toList();
  }

  static Map<String, GitcommitAuthor> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitcommitAuthor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitcommitAuthor.fromJson(value));
    }
    return map;
  }
}
