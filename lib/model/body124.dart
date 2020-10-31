part of swagger.api;

class Body124 {
  /* The title of the pull request. */
  String title = null;
/* The contents of the pull request. */
  String body = null;
/* State of this Pull Request. Either `open` or `closed`. */
  String state = null;
  //enum stateEnum {  open,  closed,  };
/* The name of the branch you want your changes pulled into. This should be an existing branch on the current repository. You cannot update the base branch on a pull request to point to another repository. */
  String base = null;
/* Indicates whether [maintainers can modify](https://help.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/) the pull request. */
  bool maintainerCanModify = null;

  Body124();

  @override
  String toString() {
    return 'Body124[title=$title, body=$body, state=$state, base=$base, maintainerCanModify=$maintainerCanModify, ]';
  }

  Body124.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    body = json['body'];
    state = json['state'];
    base = json['base'];
    maintainerCanModify = json['maintainer_can_modify'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'state': state,
      'base': base,
      'maintainer_can_modify': maintainerCanModify
     };
  }

  static List<Body124> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body124>() : json.map((value) => new Body124.fromJson(value)).toList();
  }

  static Map<String, Body124> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body124>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body124.fromJson(value));
    }
    return map;
  }
}
