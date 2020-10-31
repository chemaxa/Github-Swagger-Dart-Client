part of swagger.api;

class Commit {
  
  String url = null;

  String sha = null;

  String nodeId = null;

  String htmlUrl = null;

  String commentsUrl = null;

  CommitCommit commit = null;

  AllOfcommitAuthor author = null;

  AllOfcommitCommitter committer = null;

  List<CommitParents> parents = [];

  CommitStats stats = null;

  List<CommitFiles> files = [];

  Commit();

  @override
  String toString() {
    return 'Commit[url=$url, sha=$sha, nodeId=$nodeId, htmlUrl=$htmlUrl, commentsUrl=$commentsUrl, commit=$commit, author=$author, committer=$committer, parents=$parents, stats=$stats, files=$files, ]';
  }

  Commit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    sha = json['sha'];
    nodeId = json['node_id'];
    htmlUrl = json['html_url'];
    commentsUrl = json['comments_url'];
    commit = new CommitCommit.fromJson(json['commit']);
    author = new AllOfcommitAuthor.fromJson(json['author']);
    committer = new AllOfcommitCommitter.fromJson(json['committer']);
    parents = CommitParents.listFromJson(json['parents']);
    stats = new CommitStats.fromJson(json['stats']);
    files = CommitFiles.listFromJson(json['files']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'sha': sha,
      'node_id': nodeId,
      'html_url': htmlUrl,
      'comments_url': commentsUrl,
      'commit': commit,
      'author': author,
      'committer': committer,
      'parents': parents,
      'stats': stats,
      'files': files
     };
  }

  static List<Commit> listFromJson(List<dynamic> json) {
    return json == null ? new List<Commit>() : json.map((value) => new Commit.fromJson(value)).toList();
  }

  static Map<String, Commit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Commit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Commit.fromJson(value));
    }
    return map;
  }
}
