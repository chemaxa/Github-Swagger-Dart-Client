part of swagger.api;

class CommitsearchresultitemCommitAuthor {
  
  String name = null;

  String email = null;

  DateTime date = null;

  CommitsearchresultitemCommitAuthor();

  @override
  String toString() {
    return 'CommitsearchresultitemCommitAuthor[name=$name, email=$email, date=$date, ]';
  }

  CommitsearchresultitemCommitAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    email = json['email'];
    date = json['date'] == null ? null : DateTime.parse(json['date']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'date': date == null ? '' : date.toUtc().toIso8601String()
     };
  }

  static List<CommitsearchresultitemCommitAuthor> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitsearchresultitemCommitAuthor>() : json.map((value) => new CommitsearchresultitemCommitAuthor.fromJson(value)).toList();
  }

  static Map<String, CommitsearchresultitemCommitAuthor> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitsearchresultitemCommitAuthor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitsearchresultitemCommitAuthor.fromJson(value));
    }
    return map;
  }
}
