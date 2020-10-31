part of swagger.api;

class ShortBranch {
  
  String name = null;

  ShortbranchCommit commit = null;

  bool protected = null;

  BranchProtection protection = null;

  String protectionUrl = null;

  ShortBranch();

  @override
  String toString() {
    return 'ShortBranch[name=$name, commit=$commit, protected=$protected, protection=$protection, protectionUrl=$protectionUrl, ]';
  }

  ShortBranch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    commit = new ShortbranchCommit.fromJson(json['commit']);
    protected = json['protected'];
    protection = new BranchProtection.fromJson(json['protection']);
    protectionUrl = json['protection_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'commit': commit,
      'protected': protected,
      'protection': protection,
      'protection_url': protectionUrl
     };
  }

  static List<ShortBranch> listFromJson(List<dynamic> json) {
    return json == null ? new List<ShortBranch>() : json.map((value) => new ShortBranch.fromJson(value)).toList();
  }

  static Map<String, ShortBranch> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShortBranch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ShortBranch.fromJson(value));
    }
    return map;
  }
}
