part of swagger.api;

class BranchWithProtection {
  
  String name = null;

  Commit commit = null;

  BranchwithprotectionLinks links = null;

  bool protected = null;

  BranchProtection protection = null;

  String protectionUrl = null;

  String pattern = null;

  int requiredApprovingReviewCount = null;

  BranchWithProtection();

  @override
  String toString() {
    return 'BranchWithProtection[name=$name, commit=$commit, links=$links, protected=$protected, protection=$protection, protectionUrl=$protectionUrl, pattern=$pattern, requiredApprovingReviewCount=$requiredApprovingReviewCount, ]';
  }

  BranchWithProtection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    commit = new Commit.fromJson(json['commit']);
    links = new BranchwithprotectionLinks.fromJson(json['_links']);
    protected = json['protected'];
    protection = new BranchProtection.fromJson(json['protection']);
    protectionUrl = json['protection_url'];
    pattern = json['pattern'];
    requiredApprovingReviewCount = json['required_approving_review_count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'commit': commit,
      '_links': links,
      'protected': protected,
      'protection': protection,
      'protection_url': protectionUrl,
      'pattern': pattern,
      'required_approving_review_count': requiredApprovingReviewCount
     };
  }

  static List<BranchWithProtection> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchWithProtection>() : json.map((value) => new BranchWithProtection.fromJson(value)).toList();
  }

  static Map<String, BranchWithProtection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchWithProtection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchWithProtection.fromJson(value));
    }
    return map;
  }
}
