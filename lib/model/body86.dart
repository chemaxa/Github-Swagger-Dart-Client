part of swagger.api;

class Body86 {
  /* The commit message */
  String message = null;
/* The SHA of the tree object this commit points to */
  String tree = null;
/* The SHAs of the commits that were the parents of this commit. If omitted or empty, the commit will be written as a root commit. For a single parent, an array of one SHA should be provided; for a merge commit, an array of more than one should be provided. */
  List<String> parents = [];

  ReposownerrepogitcommitsAuthor author = null;

  ReposownerrepogitcommitsCommitter committer = null;
/* The [PGP signature](https://en.wikipedia.org/wiki/Pretty_Good_Privacy) of the commit. GitHub adds the signature to the `gpgsig` header of the created commit. For a commit signature to be verifiable by Git or GitHub, it must be an ASCII-armored detached PGP signature over the string commit as it would be written to the object database. To pass a `signature` parameter, you need to first manually create a valid PGP signature, which can be complicated. You may find it easier to [use the command line](https://git-scm.com/book/id/v2/Git-Tools-Signing-Your-Work) to create signed commits. */
  String signature = null;

  Body86();

  @override
  String toString() {
    return 'Body86[message=$message, tree=$tree, parents=$parents, author=$author, committer=$committer, signature=$signature, ]';
  }

  Body86.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    tree = json['tree'];
    parents = (json['parents'] as List).map((item) => item as String).toList();
    author = new ReposownerrepogitcommitsAuthor.fromJson(json['author']);
    committer = new ReposownerrepogitcommitsCommitter.fromJson(json['committer']);
    signature = json['signature'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'tree': tree,
      'parents': parents,
      'author': author,
      'committer': committer,
      'signature': signature
     };
  }

  static List<Body86> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body86>() : json.map((value) => new Body86.fromJson(value)).toList();
  }

  static Map<String, Body86> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body86>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body86.fromJson(value));
    }
    return map;
  }
}
