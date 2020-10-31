part of swagger.api;

class Body90 {
  /* Objects (of `path`, `mode`, `type`, and `sha`) specifying a tree structure. */
  List<ReposownerrepogittreesTree> tree = [];
/* The SHA1 of the tree you want to update with new data. If you don't set this, the commit will be created on top of everything; however, it will only contain your change, the rest of your files will show up as deleted. */
  String baseTree = null;

  Body90();

  @override
  String toString() {
    return 'Body90[tree=$tree, baseTree=$baseTree, ]';
  }

  Body90.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tree = ReposownerrepogittreesTree.listFromJson(json['tree']);
    baseTree = json['base_tree'];
  }

  Map<String, dynamic> toJson() {
    return {
      'tree': tree,
      'base_tree': baseTree
     };
  }

  static List<Body90> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body90>() : json.map((value) => new Body90.fromJson(value)).toList();
  }

  static Map<String, Body90> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body90>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body90.fromJson(value));
    }
    return map;
  }
}
