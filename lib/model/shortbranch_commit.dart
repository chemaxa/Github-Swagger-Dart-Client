part of swagger.api;

class ShortbranchCommit {
  
  String sha = null;

  String url = null;

  ShortbranchCommit();

  @override
  String toString() {
    return 'ShortbranchCommit[sha=$sha, url=$url, ]';
  }

  ShortbranchCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'url': url
     };
  }

  static List<ShortbranchCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<ShortbranchCommit>() : json.map((value) => new ShortbranchCommit.fromJson(value)).toList();
  }

  static Map<String, ShortbranchCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShortbranchCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ShortbranchCommit.fromJson(value));
    }
    return map;
  }
}
