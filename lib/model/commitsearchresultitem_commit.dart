part of swagger.api;

class CommitsearchresultitemCommit {
  
  CommitsearchresultitemCommitAuthor author = null;

  AllOfcommitsearchresultitemCommitCommitter committer = null;

  int commentCount = null;

  String message = null;

  ShortbranchCommit tree = null;

  String url = null;

  Verification verification = null;

  CommitsearchresultitemCommit();

  @override
  String toString() {
    return 'CommitsearchresultitemCommit[author=$author, committer=$committer, commentCount=$commentCount, message=$message, tree=$tree, url=$url, verification=$verification, ]';
  }

  CommitsearchresultitemCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = new CommitsearchresultitemCommitAuthor.fromJson(json['author']);
    committer = new AllOfcommitsearchresultitemCommitCommitter.fromJson(json['committer']);
    commentCount = json['comment_count'];
    message = json['message'];
    tree = new ShortbranchCommit.fromJson(json['tree']);
    url = json['url'];
    verification = new Verification.fromJson(json['verification']);
  }

  Map<String, dynamic> toJson() {
    return {
      'author': author,
      'committer': committer,
      'comment_count': commentCount,
      'message': message,
      'tree': tree,
      'url': url,
      'verification': verification
     };
  }

  static List<CommitsearchresultitemCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitsearchresultitemCommit>() : json.map((value) => new CommitsearchresultitemCommit.fromJson(value)).toList();
  }

  static Map<String, CommitsearchresultitemCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitsearchresultitemCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitsearchresultitemCommit.fromJson(value));
    }
    return map;
  }
}
