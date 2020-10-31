part of swagger.api;

class GittagObject {
  
  String sha = null;

  String type = null;

  String url = null;

  GittagObject();

  @override
  String toString() {
    return 'GittagObject[sha=$sha, type=$type, url=$url, ]';
  }

  GittagObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'type': type,
      'url': url
     };
  }

  static List<GittagObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<GittagObject>() : json.map((value) => new GittagObject.fromJson(value)).toList();
  }

  static Map<String, GittagObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GittagObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GittagObject.fromJson(value));
    }
    return map;
  }
}
