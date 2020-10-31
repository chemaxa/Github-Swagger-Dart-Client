part of swagger.api;

class ReposownerrepocontentspathCommitter1 {
  /* The name of the author (or committer) of the commit */
  String name = null;
/* The email of the author (or committer) of the commit */
  String email = null;

  ReposownerrepocontentspathCommitter1();

  @override
  String toString() {
    return 'ReposownerrepocontentspathCommitter1[name=$name, email=$email, ]';
  }

  ReposownerrepocontentspathCommitter1.fromJson(Map<String, dynamic> json) {
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

  static List<ReposownerrepocontentspathCommitter1> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepocontentspathCommitter1>() : json.map((value) => new ReposownerrepocontentspathCommitter1.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepocontentspathCommitter1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepocontentspathCommitter1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepocontentspathCommitter1.fromJson(value));
    }
    return map;
  }
}
