part of swagger.api;

class ReposownerrepogittagsTagger {
  /* The name of the author of the tag */
  String name = null;
/* The email of the author of the tag */
  String email = null;
/* When this object was tagged. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. */
  String date = null;

  ReposownerrepogittagsTagger();

  @override
  String toString() {
    return 'ReposownerrepogittagsTagger[name=$name, email=$email, date=$date, ]';
  }

  ReposownerrepogittagsTagger.fromJson(Map<String, dynamic> json) {
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

  static List<ReposownerrepogittagsTagger> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepogittagsTagger>() : json.map((value) => new ReposownerrepogittagsTagger.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepogittagsTagger> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepogittagsTagger>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepogittagsTagger.fromJson(value));
    }
    return map;
  }
}
