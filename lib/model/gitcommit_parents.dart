part of swagger.api;

class GitcommitParents {
  /* SHA for the commit */
  String sha = null;

  String url = null;

  String htmlUrl = null;

  GitcommitParents();

  @override
  String toString() {
    return 'GitcommitParents[sha=$sha, url=$url, htmlUrl=$htmlUrl, ]';
  }

  GitcommitParents.fromJson(Map<String, dynamic> json) {
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

  static List<GitcommitParents> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitcommitParents>() : json.map((value) => new GitcommitParents.fromJson(value)).toList();
  }

  static Map<String, GitcommitParents> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitcommitParents>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitcommitParents.fromJson(value));
    }
    return map;
  }
}
