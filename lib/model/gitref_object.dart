part of swagger.api;

class GitrefObject {
  
  String type = null;
/* SHA for the reference */
  String sha = null;

  String url = null;

  GitrefObject();

  @override
  String toString() {
    return 'GitrefObject[type=$type, sha=$sha, url=$url, ]';
  }

  GitrefObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    sha = json['sha'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'sha': sha,
      'url': url
     };
  }

  static List<GitrefObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitrefObject>() : json.map((value) => new GitrefObject.fromJson(value)).toList();
  }

  static Map<String, GitrefObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitrefObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitrefObject.fromJson(value));
    }
    return map;
  }
}
