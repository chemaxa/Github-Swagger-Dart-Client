part of swagger.api;

class SelectedActions {
  /* Whether GitHub-owned actions are allowed. For example, this includes the actions in the `actions` organization. */
  bool githubOwnedAllowed = null;
/* Whether actions in GitHub Marketplace from verified creators are allowed. Set to `true` to allow all GitHub Marketplace actions by verified creators. */
  bool verifiedAllowed = null;
/* Specifies a list of string-matching patterns to allow specific action(s). Wildcards, tags, and SHAs are allowed. For example, `monalisa/octocat@*`, `monalisa/octocat@v2`, `monalisa/_*`.\" */
  List<String> patternsAllowed = [];

  SelectedActions();

  @override
  String toString() {
    return 'SelectedActions[githubOwnedAllowed=$githubOwnedAllowed, verifiedAllowed=$verifiedAllowed, patternsAllowed=$patternsAllowed, ]';
  }

  SelectedActions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    githubOwnedAllowed = json['github_owned_allowed'];
    verifiedAllowed = json['verified_allowed'];
    patternsAllowed = (json['patterns_allowed'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'github_owned_allowed': githubOwnedAllowed,
      'verified_allowed': verifiedAllowed,
      'patterns_allowed': patternsAllowed
     };
  }

  static List<SelectedActions> listFromJson(List<dynamic> json) {
    return json == null ? new List<SelectedActions>() : json.map((value) => new SelectedActions.fromJson(value)).toList();
  }

  static Map<String, SelectedActions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SelectedActions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SelectedActions.fromJson(value));
    }
    return map;
  }
}
