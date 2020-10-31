part of swagger.api;

class Body114 {
  /* The name of the base branch that the head will be merged into. */
  String base = null;
/* The head to merge. This can be a branch name or a commit SHA1. */
  String head = null;
/* Commit message to use for the merge commit. If omitted, a default message will be used. */
  String commitMessage = null;

  Body114();

  @override
  String toString() {
    return 'Body114[base=$base, head=$head, commitMessage=$commitMessage, ]';
  }

  Body114.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    base = json['base'];
    head = json['head'];
    commitMessage = json['commit_message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'base': base,
      'head': head,
      'commit_message': commitMessage
     };
  }

  static List<Body114> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body114>() : json.map((value) => new Body114.fromJson(value)).toList();
  }

  static Map<String, Body114> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body114>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body114.fromJson(value));
    }
    return map;
  }
}
