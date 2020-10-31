part of swagger.api;

class Blob {
  
  String content = null;

  String encoding = null;

  String url = null;

  String sha = null;

  int size = null;

  String nodeId = null;

  String highlightedContent = null;

  Blob();

  @override
  String toString() {
    return 'Blob[content=$content, encoding=$encoding, url=$url, sha=$sha, size=$size, nodeId=$nodeId, highlightedContent=$highlightedContent, ]';
  }

  Blob.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
    encoding = json['encoding'];
    url = json['url'];
    sha = json['sha'];
    size = json['size'];
    nodeId = json['node_id'];
    highlightedContent = json['highlighted_content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'encoding': encoding,
      'url': url,
      'sha': sha,
      'size': size,
      'node_id': nodeId,
      'highlighted_content': highlightedContent
     };
  }

  static List<Blob> listFromJson(List<dynamic> json) {
    return json == null ? new List<Blob>() : json.map((value) => new Blob.fromJson(value)).toList();
  }

  static Map<String, Blob> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Blob>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Blob.fromJson(value));
    }
    return map;
  }
}
