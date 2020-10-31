part of swagger.api;

class StarredRepository {
  
  DateTime starredAt = null;

  Repository repo = null;

  StarredRepository();

  @override
  String toString() {
    return 'StarredRepository[starredAt=$starredAt, repo=$repo, ]';
  }

  StarredRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    starredAt = json['starred_at'] == null ? null : DateTime.parse(json['starred_at']);
    repo = new Repository.fromJson(json['repo']);
  }

  Map<String, dynamic> toJson() {
    return {
      'starred_at': starredAt == null ? '' : starredAt.toUtc().toIso8601String(),
      'repo': repo
     };
  }

  static List<StarredRepository> listFromJson(List<dynamic> json) {
    return json == null ? new List<StarredRepository>() : json.map((value) => new StarredRepository.fromJson(value)).toList();
  }

  static Map<String, StarredRepository> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StarredRepository>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StarredRepository.fromJson(value));
    }
    return map;
  }
}
