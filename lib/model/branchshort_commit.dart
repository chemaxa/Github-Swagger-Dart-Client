part of swagger.api;

class BranchshortCommit {
  
  String sha = null;

  String url = null;

  BranchshortCommit();

  @override
  String toString() {
    return 'BranchshortCommit[sha=$sha, url=$url, ]';
  }

  BranchshortCommit.fromJson(Map<String, dynamic> json) {
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

  static List<BranchshortCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchshortCommit>() : json.map((value) => new BranchshortCommit.fromJson(value)).toList();
  }

  static Map<String, BranchshortCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchshortCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchshortCommit.fromJson(value));
    }
    return map;
  }
}
