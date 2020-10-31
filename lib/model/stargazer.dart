part of swagger.api;

class Stargazer {
  
  DateTime starredAt = null;

  AllOfstargazerUser user = null;

  Stargazer();

  @override
  String toString() {
    return 'Stargazer[starredAt=$starredAt, user=$user, ]';
  }

  Stargazer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    starredAt = json['starred_at'] == null ? null : DateTime.parse(json['starred_at']);
    user = new AllOfstargazerUser.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    return {
      'starred_at': starredAt == null ? '' : starredAt.toUtc().toIso8601String(),
      'user': user
     };
  }

  static List<Stargazer> listFromJson(List<dynamic> json) {
    return json == null ? new List<Stargazer>() : json.map((value) => new Stargazer.fromJson(value)).toList();
  }

  static Map<String, Stargazer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Stargazer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Stargazer.fromJson(value));
    }
    return map;
  }
}
