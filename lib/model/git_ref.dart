part of swagger.api;

class GitRef {
  
  String ref = null;

  String nodeId = null;

  String url = null;

  GitrefObject object = null;

  GitRef();

  @override
  String toString() {
    return 'GitRef[ref=$ref, nodeId=$nodeId, url=$url, object=$object, ]';
  }

  GitRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ref = json['ref'];
    nodeId = json['node_id'];
    url = json['url'];
    object = new GitrefObject.fromJson(json['object']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ref': ref,
      'node_id': nodeId,
      'url': url,
      'object': object
     };
  }

  static List<GitRef> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitRef>() : json.map((value) => new GitRef.fromJson(value)).toList();
  }

  static Map<String, GitRef> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitRef>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitRef.fromJson(value));
    }
    return map;
  }
}
