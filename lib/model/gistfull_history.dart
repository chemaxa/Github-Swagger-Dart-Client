part of swagger.api;

class GistfullHistory {
  
  String url = null;

  String version = null;

  RepositoryTemplateRepositoryOwner user = null;

  GistfullChangeStatus changeStatus = null;

  String committedAt = null;

  GistfullHistory();

  @override
  String toString() {
    return 'GistfullHistory[url=$url, version=$version, user=$user, changeStatus=$changeStatus, committedAt=$committedAt, ]';
  }

  GistfullHistory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    version = json['version'];
    user = new RepositoryTemplateRepositoryOwner.fromJson(json['user']);
    changeStatus = new GistfullChangeStatus.fromJson(json['change_status']);
    committedAt = json['committed_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'version': version,
      'user': user,
      'change_status': changeStatus,
      'committed_at': committedAt
     };
  }

  static List<GistfullHistory> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistfullHistory>() : json.map((value) => new GistfullHistory.fromJson(value)).toList();
  }

  static Map<String, GistfullHistory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistfullHistory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistfullHistory.fromJson(value));
    }
    return map;
  }
}
