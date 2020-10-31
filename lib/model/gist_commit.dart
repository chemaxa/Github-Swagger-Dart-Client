part of swagger.api;

class GistCommit {
  
  String url = null;

  String version = null;

  AllOfgistCommitUser user = null;

  GistcommitChangeStatus changeStatus = null;

  DateTime committedAt = null;

  GistCommit();

  @override
  String toString() {
    return 'GistCommit[url=$url, version=$version, user=$user, changeStatus=$changeStatus, committedAt=$committedAt, ]';
  }

  GistCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    version = json['version'];
    user = new AllOfgistCommitUser.fromJson(json['user']);
    changeStatus = new GistcommitChangeStatus.fromJson(json['change_status']);
    committedAt = json['committed_at'] == null ? null : DateTime.parse(json['committed_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'version': version,
      'user': user,
      'change_status': changeStatus,
      'committed_at': committedAt == null ? '' : committedAt.toUtc().toIso8601String()
     };
  }

  static List<GistCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistCommit>() : json.map((value) => new GistCommit.fromJson(value)).toList();
  }

  static Map<String, GistCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistCommit.fromJson(value));
    }
    return map;
  }
}
