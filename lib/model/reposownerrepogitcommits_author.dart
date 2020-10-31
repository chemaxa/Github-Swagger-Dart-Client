part of swagger.api;

class ReposownerrepogitcommitsAuthor {
  /* The name of the author (or committer) of the commit */
  String name = null;
/* The email of the author (or committer) of the commit */
  String email = null;
/* Indicates when this commit was authored (or committed). This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. */
  String date = null;

  ReposownerrepogitcommitsAuthor();

  @override
  String toString() {
    return 'ReposownerrepogitcommitsAuthor[name=$name, email=$email, date=$date, ]';
  }

  ReposownerrepogitcommitsAuthor.fromJson(Map<String, dynamic> json) {
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

  static List<ReposownerrepogitcommitsAuthor> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepogitcommitsAuthor>() : json.map((value) => new ReposownerrepogitcommitsAuthor.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepogitcommitsAuthor> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepogitcommitsAuthor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepogitcommitsAuthor.fromJson(value));
    }
    return map;
  }
}
