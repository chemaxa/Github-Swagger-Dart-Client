part of swagger.api;

class CommitParents {
  
  String sha = null;

  String url = null;

  String htmlUrl = null;

  CommitParents();

  @override
  String toString() {
    return 'CommitParents[sha=$sha, url=$url, htmlUrl=$htmlUrl, ]';
  }

  CommitParents.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    url = json['url'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'url': url,
      'html_url': htmlUrl
     };
  }

  static List<CommitParents> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitParents>() : json.map((value) => new CommitParents.fromJson(value)).toList();
  }

  static Map<String, CommitParents> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitParents>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitParents.fromJson(value));
    }
    return map;
  }
}
