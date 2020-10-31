part of swagger.api;

class AllOfcommitsearchresultitemCommitCommitter {
  
  String name = null;

  String email = null;

  String date = null;

  AllOfcommitsearchresultitemCommitCommitter();

  @override
  String toString() {
    return 'AllOfcommitsearchresultitemCommitCommitter[name=$name, email=$email, date=$date, ]';
  }

  AllOfcommitsearchresultitemCommitCommitter.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfcommitsearchresultitemCommitCommitter> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommitsearchresultitemCommitCommitter>() : json.map((value) => new AllOfcommitsearchresultitemCommitCommitter.fromJson(value)).toList();
  }

  static Map<String, AllOfcommitsearchresultitemCommitCommitter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommitsearchresultitemCommitCommitter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommitsearchresultitemCommitCommitter.fromJson(value));
    }
    return map;
  }
}
