part of swagger.api;

class GitcommitTree {
  /* SHA for the commit */
  String sha = null;

  String url = null;

  GitcommitTree();

  @override
  String toString() {
    return 'GitcommitTree[sha=$sha, url=$url, ]';
  }

  GitcommitTree.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'url': url
     };
  }

  static List<GitcommitTree> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitcommitTree>() : json.map((value) => new GitcommitTree.fromJson(value)).toList();
  }

  static Map<String, GitcommitTree> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitcommitTree>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitcommitTree.fromJson(value));
    }
    return map;
  }
}
