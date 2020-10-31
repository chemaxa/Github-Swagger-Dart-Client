part of swagger.api;

class ReposownerrepocontentspathAuthor {
  /* The name of the author or committer of the commit. You'll receive a `422` status code if `name` is omitted. */
  String name = null;
/* The email of the author or committer of the commit. You'll receive a `422` status code if `email` is omitted. */
  String email = null;

  String date = null;

  ReposownerrepocontentspathAuthor();

  @override
  String toString() {
    return 'ReposownerrepocontentspathAuthor[name=$name, email=$email, date=$date, ]';
  }

  ReposownerrepocontentspathAuthor.fromJson(Map<String, dynamic> json) {
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

  static List<ReposownerrepocontentspathAuthor> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepocontentspathAuthor>() : json.map((value) => new ReposownerrepocontentspathAuthor.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepocontentspathAuthor> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepocontentspathAuthor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepocontentspathAuthor.fromJson(value));
    }
    return map;
  }
}
