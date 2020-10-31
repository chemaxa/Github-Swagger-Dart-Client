part of swagger.api;

class BranchShort {
  
  String name = null;

  BranchshortCommit commit = null;

  bool protected = null;

  BranchShort();

  @override
  String toString() {
    return 'BranchShort[name=$name, commit=$commit, protected=$protected, ]';
  }

  BranchShort.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    commit = new BranchshortCommit.fromJson(json['commit']);
    protected = json['protected'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'commit': commit,
      'protected': protected
     };
  }

  static List<BranchShort> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchShort>() : json.map((value) => new BranchShort.fromJson(value)).toList();
  }

  static Map<String, BranchShort> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchShort>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchShort.fromJson(value));
    }
    return map;
  }
}
