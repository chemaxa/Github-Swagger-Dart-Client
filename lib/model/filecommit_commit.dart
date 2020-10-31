part of swagger.api;

class FilecommitCommit {
  
  String sha = null;

  String nodeId = null;

  String url = null;

  String htmlUrl = null;

  FilecommitCommitAuthor author = null;

  FilecommitCommitAuthor committer = null;

  String message = null;

  FilecommitCommitTree tree = null;

  List<FilecommitCommitParents> parents = [];

  FilecommitCommitVerification verification = null;

  FilecommitCommit();

  @override
  String toString() {
    return 'FilecommitCommit[sha=$sha, nodeId=$nodeId, url=$url, htmlUrl=$htmlUrl, author=$author, committer=$committer, message=$message, tree=$tree, parents=$parents, verification=$verification, ]';
  }

  FilecommitCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    nodeId = json['node_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    author = new FilecommitCommitAuthor.fromJson(json['author']);
    committer = new FilecommitCommitAuthor.fromJson(json['committer']);
    message = json['message'];
    tree = new FilecommitCommitTree.fromJson(json['tree']);
    parents = FilecommitCommitParents.listFromJson(json['parents']);
    verification = new FilecommitCommitVerification.fromJson(json['verification']);
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'node_id': nodeId,
      'url': url,
      'html_url': htmlUrl,
      'author': author,
      'committer': committer,
      'message': message,
      'tree': tree,
      'parents': parents,
      'verification': verification
     };
  }

  static List<FilecommitCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<FilecommitCommit>() : json.map((value) => new FilecommitCommit.fromJson(value)).toList();
  }

  static Map<String, FilecommitCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilecommitCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FilecommitCommit.fromJson(value));
    }
    return map;
  }
}
