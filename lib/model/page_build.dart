part of swagger.api;

class PageBuild {
  
  String url = null;

  String status = null;

  PagebuildError error = null;

  AllOfpageBuildPusher pusher = null;

  String commit = null;

  int duration = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  PageBuild();

  @override
  String toString() {
    return 'PageBuild[url=$url, status=$status, error=$error, pusher=$pusher, commit=$commit, duration=$duration, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  PageBuild.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    status = json['status'];
    error = new PagebuildError.fromJson(json['error']);
    pusher = new AllOfpageBuildPusher.fromJson(json['pusher']);
    commit = json['commit'];
    duration = json['duration'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'status': status,
      'error': error,
      'pusher': pusher,
      'commit': commit,
      'duration': duration,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String()
     };
  }

  static List<PageBuild> listFromJson(List<dynamic> json) {
    return json == null ? new List<PageBuild>() : json.map((value) => new PageBuild.fromJson(value)).toList();
  }

  static Map<String, PageBuild> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PageBuild>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PageBuild.fromJson(value));
    }
    return map;
  }
}
