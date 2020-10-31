part of swagger.api;

class GittreeTree {
  
  String path = null;

  String mode = null;

  String type = null;

  String sha = null;

  int size = null;

  String url = null;

  GittreeTree();

  @override
  String toString() {
    return 'GittreeTree[path=$path, mode=$mode, type=$type, sha=$sha, size=$size, url=$url, ]';
  }

  GittreeTree.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['path'];
    mode = json['mode'];
    type = json['type'];
    sha = json['sha'];
    size = json['size'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'mode': mode,
      'type': type,
      'sha': sha,
      'size': size,
      'url': url
     };
  }

  static List<GittreeTree> listFromJson(List<dynamic> json) {
    return json == null ? new List<GittreeTree>() : json.map((value) => new GittreeTree.fromJson(value)).toList();
  }

  static Map<String, GittreeTree> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GittreeTree>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GittreeTree.fromJson(value));
    }
    return map;
  }
}
