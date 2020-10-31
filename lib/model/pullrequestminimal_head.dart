part of swagger.api;

class PullrequestminimalHead {
  
  String ref = null;

  String sha = null;

  PullrequestminimalHeadRepo repo = null;

  PullrequestminimalHead();

  @override
  String toString() {
    return 'PullrequestminimalHead[ref=$ref, sha=$sha, repo=$repo, ]';
  }

  PullrequestminimalHead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ref = json['ref'];
    sha = json['sha'];
    repo = new PullrequestminimalHeadRepo.fromJson(json['repo']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ref': ref,
      'sha': sha,
      'repo': repo
     };
  }

  static List<PullrequestminimalHead> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestminimalHead>() : json.map((value) => new PullrequestminimalHead.fromJson(value)).toList();
  }

  static Map<String, PullrequestminimalHead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestminimalHead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestminimalHead.fromJson(value));
    }
    return map;
  }
}
