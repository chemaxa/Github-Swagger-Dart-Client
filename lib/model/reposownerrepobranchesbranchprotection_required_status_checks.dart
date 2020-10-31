part of swagger.api;

class ReposownerrepobranchesbranchprotectionRequiredStatusChecks {
  /* Require branches to be up to date before merging. */
  bool strict = null;
/* The list of status checks to require in order to merge into this branch */
  List<String> contexts = [];

  ReposownerrepobranchesbranchprotectionRequiredStatusChecks();

  @override
  String toString() {
    return 'ReposownerrepobranchesbranchprotectionRequiredStatusChecks[strict=$strict, contexts=$contexts, ]';
  }

  ReposownerrepobranchesbranchprotectionRequiredStatusChecks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    strict = json['strict'];
    contexts = (json['contexts'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'strict': strict,
      'contexts': contexts
     };
  }

  static List<ReposownerrepobranchesbranchprotectionRequiredStatusChecks> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepobranchesbranchprotectionRequiredStatusChecks>() : json.map((value) => new ReposownerrepobranchesbranchprotectionRequiredStatusChecks.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepobranchesbranchprotectionRequiredStatusChecks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepobranchesbranchprotectionRequiredStatusChecks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepobranchesbranchprotectionRequiredStatusChecks.fromJson(value));
    }
    return map;
  }
}
