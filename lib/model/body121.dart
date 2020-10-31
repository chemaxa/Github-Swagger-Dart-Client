part of swagger.api;

class Body121 {
  /* The title of the new pull request. */
  String title = null;
/* The name of the branch where your changes are implemented. For cross-repository pull requests in the same network, namespace `head` with a user like this: `username:branch`. */
  String head = null;
/* The name of the branch you want the changes pulled into. This should be an existing branch on the current repository. You cannot submit a pull request to one repository that requests a merge to a base of another repository. */
  String base = null;
/* The contents of the pull request. */
  String body = null;
/* Indicates whether [maintainers can modify](https://help.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/) the pull request. */
  bool maintainerCanModify = null;
/* Indicates whether the pull request is a draft. See \"[Draft Pull Requests](https://help.github.com/en/articles/about-pull-requests#draft-pull-requests)\" in the GitHub Help documentation to learn more. */
  bool draft = null;

  int issue = null;

  Body121();

  @override
  String toString() {
    return 'Body121[title=$title, head=$head, base=$base, body=$body, maintainerCanModify=$maintainerCanModify, draft=$draft, issue=$issue, ]';
  }

  Body121.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    head = json['head'];
    base = json['base'];
    body = json['body'];
    maintainerCanModify = json['maintainer_can_modify'];
    draft = json['draft'];
    issue = json['issue'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'head': head,
      'base': base,
      'body': body,
      'maintainer_can_modify': maintainerCanModify,
      'draft': draft,
      'issue': issue
     };
  }

  static List<Body121> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body121>() : json.map((value) => new Body121.fromJson(value)).toList();
  }

  static Map<String, Body121> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body121>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body121.fromJson(value));
    }
    return map;
  }
}
