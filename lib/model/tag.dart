part of swagger.api;

class Tag {
  
  String name = null;

  ShortbranchCommit commit = null;

  String zipballUrl = null;

  String tarballUrl = null;

  String nodeId = null;

  Tag();

  @override
  String toString() {
    return 'Tag[name=$name, commit=$commit, zipballUrl=$zipballUrl, tarballUrl=$tarballUrl, nodeId=$nodeId, ]';
  }

  Tag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    commit = new ShortbranchCommit.fromJson(json['commit']);
    zipballUrl = json['zipball_url'];
    tarballUrl = json['tarball_url'];
    nodeId = json['node_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'commit': commit,
      'zipball_url': zipballUrl,
      'tarball_url': tarballUrl,
      'node_id': nodeId
     };
  }

  static List<Tag> listFromJson(List<dynamic> json) {
    return json == null ? new List<Tag>() : json.map((value) => new Tag.fromJson(value)).toList();
  }

  static Map<String, Tag> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Tag>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Tag.fromJson(value));
    }
    return map;
  }
}
