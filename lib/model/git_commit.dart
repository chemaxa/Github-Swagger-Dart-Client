part of swagger.api;

class GitCommit {
  /* SHA for the commit */
  String sha = null;

  String nodeId = null;

  String url = null;

  GitcommitAuthor author = null;

  GitcommitAuthor committer = null;
/* Message describing the purpose of the commit */
  String message = null;

  GitcommitTree tree = null;

  List<GitcommitParents> parents = [];

  FilecommitCommitVerification verification = null;

  String htmlUrl = null;

  GitCommit();

  @override
  String toString() {
    return 'GitCommit[sha=$sha, nodeId=$nodeId, url=$url, author=$author, committer=$committer, message=$message, tree=$tree, parents=$parents, verification=$verification, htmlUrl=$htmlUrl, ]';
  }

  GitCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    nodeId = json['node_id'];
    url = json['url'];
    author = new GitcommitAuthor.fromJson(json['author']);
    committer = new GitcommitAuthor.fromJson(json['committer']);
    message = json['message'];
    tree = new GitcommitTree.fromJson(json['tree']);
    parents = GitcommitParents.listFromJson(json['parents']);
    verification = new FilecommitCommitVerification.fromJson(json['verification']);
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'node_id': nodeId,
      'url': url,
      'author': author,
      'committer': committer,
      'message': message,
      'tree': tree,
      'parents': parents,
      'verification': verification,
      'html_url': htmlUrl
     };
  }

  static List<GitCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitCommit>() : json.map((value) => new GitCommit.fromJson(value)).toList();
  }

  static Map<String, GitCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitCommit.fromJson(value));
    }
    return map;
  }
}
