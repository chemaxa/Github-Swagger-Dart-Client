part of swagger.api;

class PagesSourceHash {
  
  String branch = null;

  String path = null;

  PagesSourceHash();

  @override
  String toString() {
    return 'PagesSourceHash[branch=$branch, path=$path, ]';
  }

  PagesSourceHash.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    branch = json['branch'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    return {
      'branch': branch,
      'path': path
     };
  }

  static List<PagesSourceHash> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagesSourceHash>() : json.map((value) => new PagesSourceHash.fromJson(value)).toList();
  }

  static Map<String, PagesSourceHash> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagesSourceHash>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagesSourceHash.fromJson(value));
    }
    return map;
  }
}
