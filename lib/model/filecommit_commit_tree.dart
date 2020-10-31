part of swagger.api;

class FilecommitCommitTree {
  
  String url = null;

  String sha = null;

  FilecommitCommitTree();

  @override
  String toString() {
    return 'FilecommitCommitTree[url=$url, sha=$sha, ]';
  }

  FilecommitCommitTree.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    sha = json['sha'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'sha': sha
     };
  }

  static List<FilecommitCommitTree> listFromJson(List<dynamic> json) {
    return json == null ? new List<FilecommitCommitTree>() : json.map((value) => new FilecommitCommitTree.fromJson(value)).toList();
  }

  static Map<String, FilecommitCommitTree> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilecommitCommitTree>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FilecommitCommitTree.fromJson(value));
    }
    return map;
  }
}
