part of swagger.api;

class AllOfcommitSearchResultItemCommitter {
  
  String name = null;

  String email = null;

  String date = null;

  AllOfcommitSearchResultItemCommitter();

  @override
  String toString() {
    return 'AllOfcommitSearchResultItemCommitter[name=$name, email=$email, date=$date, ]';
  }

  AllOfcommitSearchResultItemCommitter.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfcommitSearchResultItemCommitter> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommitSearchResultItemCommitter>() : json.map((value) => new AllOfcommitSearchResultItemCommitter.fromJson(value)).toList();
  }

  static Map<String, AllOfcommitSearchResultItemCommitter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommitSearchResultItemCommitter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommitSearchResultItemCommitter.fromJson(value));
    }
    return map;
  }
}
