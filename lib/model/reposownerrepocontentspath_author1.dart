part of swagger.api;

class ReposownerrepocontentspathAuthor1 {
  /* The name of the author (or committer) of the commit */
  String name = null;
/* The email of the author (or committer) of the commit */
  String email = null;

  ReposownerrepocontentspathAuthor1();

  @override
  String toString() {
    return 'ReposownerrepocontentspathAuthor1[name=$name, email=$email, ]';
  }

  ReposownerrepocontentspathAuthor1.fromJson(Map<String, dynamic> json) {
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

  static List<ReposownerrepocontentspathAuthor1> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepocontentspathAuthor1>() : json.map((value) => new ReposownerrepocontentspathAuthor1.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepocontentspathAuthor1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepocontentspathAuthor1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepocontentspathAuthor1.fromJson(value));
    }
    return map;
  }
}
