part of swagger.api;

class CommitCommitTree {
  
  String sha = null;

  String url = null;

  CommitCommitTree();

  @override
  String toString() {
    return 'CommitCommitTree[sha=$sha, url=$url, ]';
  }

  CommitCommitTree.fromJson(Map<String, dynamic> json) {
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

  static List<CommitCommitTree> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitCommitTree>() : json.map((value) => new CommitCommitTree.fromJson(value)).toList();
  }

  static Map<String, CommitCommitTree> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitCommitTree>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitCommitTree.fromJson(value));
    }
    return map;
  }
}
