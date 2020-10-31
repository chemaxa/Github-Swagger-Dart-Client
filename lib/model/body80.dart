part of swagger.api;

class Body80 {
  /* The commit message. */
  String message = null;
/* The blob SHA of the file being replaced. */
  String sha = null;
/* The branch name. Default: the repository’s default branch (usually `master`) */
  String branch = null;

  ReposownerrepocontentspathCommitter1 committer = null;

  ReposownerrepocontentspathAuthor1 author = null;

  Body80();

  @override
  String toString() {
    return 'Body80[message=$message, sha=$sha, branch=$branch, committer=$committer, author=$author, ]';
  }

  Body80.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    sha = json['sha'];
    branch = json['branch'];
    committer = new ReposownerrepocontentspathCommitter1.fromJson(json['committer']);
    author = new ReposownerrepocontentspathAuthor1.fromJson(json['author']);
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'sha': sha,
      'branch': branch,
      'committer': committer,
      'author': author
     };
  }

  static List<Body80> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body80>() : json.map((value) => new Body80.fromJson(value)).toList();
  }

  static Map<String, Body80> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body80>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body80.fromJson(value));
    }
    return map;
  }
}
