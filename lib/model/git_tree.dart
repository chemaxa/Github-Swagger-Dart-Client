part of swagger.api;

class GitTree {
  
  String sha = null;

  String url = null;

  bool truncated = null;
/* Objects specifying a tree structure */
  List<GittreeTree> tree = [];

  GitTree();

  @override
  String toString() {
    return 'GitTree[sha=$sha, url=$url, truncated=$truncated, tree=$tree, ]';
  }

  GitTree.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    url = json['url'];
    truncated = json['truncated'];
    tree = GittreeTree.listFromJson(json['tree']);
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'url': url,
      'truncated': truncated,
      'tree': tree
     };
  }

  static List<GitTree> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitTree>() : json.map((value) => new GitTree.fromJson(value)).toList();
  }

  static Map<String, GitTree> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitTree>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitTree.fromJson(value));
    }
    return map;
  }
}
