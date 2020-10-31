part of swagger.api;

class PullrequestsimpleHead {
  
  String label = null;

  String ref = null;

  Repository repo = null;

  String sha = null;

  AllOfpullrequestsimpleHeadUser user = null;

  PullrequestsimpleHead();

  @override
  String toString() {
    return 'PullrequestsimpleHead[label=$label, ref=$ref, repo=$repo, sha=$sha, user=$user, ]';
  }

  PullrequestsimpleHead.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    ref = json['ref'];
    repo = new Repository.fromJson(json['repo']);
    sha = json['sha'];
    user = new AllOfpullrequestsimpleHeadUser.fromJson(json['user']);
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

  static List<PullrequestsimpleHead> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestsimpleHead>() : json.map((value) => new PullrequestsimpleHead.fromJson(value)).toList();
  }

  static Map<String, PullrequestsimpleHead> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestsimpleHead>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestsimpleHead.fromJson(value));
    }
    return map;
  }
}
