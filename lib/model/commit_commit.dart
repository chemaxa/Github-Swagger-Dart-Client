part of swagger.api;

class CommitCommit {
  
  String url = null;

  AllOfcommitCommitAuthor author = null;

  AllOfcommitCommitCommitter committer = null;

  String message = null;

  int commentCount = null;

  CommitCommitTree tree = null;

  Verification verification = null;

  CommitCommit();

  @override
  String toString() {
    return 'CommitCommit[url=$url, author=$author, committer=$committer, message=$message, commentCount=$commentCount, tree=$tree, verification=$verification, ]';
  }

  CommitCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    author = new AllOfcommitCommitAuthor.fromJson(json['author']);
    committer = new AllOfcommitCommitCommitter.fromJson(json['committer']);
    message = json['message'];
    commentCount = json['comment_count'];
    tree = new CommitCommitTree.fromJson(json['tree']);
    verification = new Verification.fromJson(json['verification']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'author': author,
      'committer': committer,
      'message': message,
      'comment_count': commentCount,
      'tree': tree,
      'verification': verification
     };
  }

  static List<CommitCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitCommit>() : json.map((value) => new CommitCommit.fromJson(value)).toList();
  }

  static Map<String, CommitCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitCommit.fromJson(value));
    }
    return map;
  }
}
