part of swagger.api;

class ReposownerrepocontentspathCommitter {
  /* The name of the author or committer of the commit. You'll receive a `422` status code if `name` is omitted. */
  String name = null;
/* The email of the author or committer of the commit. You'll receive a `422` status code if `email` is omitted. */
  String email = null;

  String date = null;

  ReposownerrepocontentspathCommitter();

  @override
  String toString() {
    return 'ReposownerrepocontentspathCommitter[name=$name, email=$email, date=$date, ]';
  }

  ReposownerrepocontentspathCommitter.fromJson(Map<String, dynamic> json) {
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

  static List<ReposownerrepocontentspathCommitter> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepocontentspathCommitter>() : json.map((value) => new ReposownerrepocontentspathCommitter.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepocontentspathCommitter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepocontentspathCommitter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepocontentspathCommitter.fromJson(value));
    }
    return map;
  }
}
