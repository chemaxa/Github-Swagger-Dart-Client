part of swagger.api;

class ShortBlob {
  
  String url = null;

  String sha = null;

  ShortBlob();

  @override
  String toString() {
    return 'ShortBlob[url=$url, sha=$sha, ]';
  }

  ShortBlob.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    sha = json['sha'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'sha': sha
     };
  }

  static List<ShortBlob> listFromJson(List<dynamic> json) {
    return json == null ? new List<ShortBlob>() : json.map((value) => new ShortBlob.fromJson(value)).toList();
  }

  static Map<String, ShortBlob> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShortBlob>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ShortBlob.fromJson(value));
    }
    return map;
  }
}
