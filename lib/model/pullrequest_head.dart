part of swagger.api;

class PullrequestHead {
  
  String label = null;

  String ref = null;

  PullrequestHeadRepo repo = null;

  String sha = null;

  PullrequestHeadRepoOwner user = null;

  PullrequestHead();

  @override
  String toString() {
    return 'PullrequestHead[label=$label, ref=$ref, repo=$repo, sha=$sha, user=$user, ]';
  }

  PullrequestHead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    ref = json['ref'];
    repo = new PullrequestHeadRepo.fromJson(json['repo']);
    sha = json['sha'];
    user = new PullrequestHeadRepoOwner.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'ref': ref,
      'repo': repo,
      'sha': sha,
      'user': user
     };
  }

  static List<PullrequestHead> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestHead>() : json.map((value) => new PullrequestHead.fromJson(value)).toList();
  }

  static Map<String, PullrequestHead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestHead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestHead.fromJson(value));
    }
    return map;
  }
}
