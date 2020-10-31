part of swagger.api;

class Body127 {
  /* Title for the automatic commit message. */
  String commitTitle = null;
/* Extra detail to append to automatic commit message. */
  String commitMessage = null;
/* SHA that pull request head must match to allow merge. */
  String sha = null;
/* Merge method to use. Possible values are `merge`, `squash` or `rebase`. Default is `merge`. */
  String mergeMethod = null;
  //enum mergeMethodEnum {  merge,  squash,  rebase,  };

  Body127();

  @override
  String toString() {
    return 'Body127[commitTitle=$commitTitle, commitMessage=$commitMessage, sha=$sha, mergeMethod=$mergeMethod, ]';
  }

  Body127.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commitTitle = json['commit_title'];
    commitMessage = json['commit_message'];
    sha = json['sha'];
    mergeMethod = json['merge_method'];
  }

  Map<String, dynamic> toJson() {
    return {
      'commit_title': commitTitle,
      'commit_message': commitMessage,
      'sha': sha,
      'merge_method': mergeMethod
     };
  }

  static List<Body127> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body127>() : json.map((value) => new Body127.fromJson(value)).toList();
  }

  static Map<String, Body127> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body127>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body127.fromJson(value));
    }
    return map;
  }
}
