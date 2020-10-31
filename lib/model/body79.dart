part of swagger.api;

class Body79 {
  /* The commit message. */
  String message = null;
/* The new file content, using Base64 encoding. */
  String content = null;
/* **Required if you are updating a file**. The blob SHA of the file being replaced. */
  String sha = null;
/* The branch name. Default: the repository’s default branch (usually `master`) */
  String branch = null;

  ReposownerrepocontentspathCommitter committer = null;

  ReposownerrepocontentspathAuthor author = null;

  Body79();

  @override
  String toString() {
    return 'Body79[message=$message, content=$content, sha=$sha, branch=$branch, committer=$committer, author=$author, ]';
  }

  Body79.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    content = json['content'];
    sha = json['sha'];
    branch = json['branch'];
    committer = new ReposownerrepocontentspathCommitter.fromJson(json['committer']);
    author = new ReposownerrepocontentspathAuthor.fromJson(json['author']);
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'content': content,
      'sha': sha,
      'branch': branch,
      'committer': committer,
      'author': author
     };
  }

  static List<Body79> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body79>() : json.map((value) => new Body79.fromJson(value)).toList();
  }

  static Map<String, Body79> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body79>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body79.fromJson(value));
    }
    return map;
  }
}
