part of swagger.api;

class AllOfcommitCommitCommitter {
  
  String name = null;

  String email = null;

  String date = null;

  AllOfcommitCommitCommitter();

  @override
  String toString() {
    return 'AllOfcommitCommitCommitter[name=$name, email=$email, date=$date, ]';
  }

  AllOfcommitCommitCommitter.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfcommitCommitCommitter> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommitCommitCommitter>() : json.map((value) => new AllOfcommitCommitCommitter.fromJson(value)).toList();
  }

  static Map<String, AllOfcommitCommitCommitter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommitCommitCommitter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommitCommitCommitter.fromJson(value));
    }
    return map;
  }
}
