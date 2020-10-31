part of swagger.api;

class PullrequestBase {
  
  String label = null;

  String ref = null;

  PullrequestBaseRepo repo = null;

  String sha = null;

  PullrequestHeadRepoOwner user = null;

  PullrequestBase();

  @override
  String toString() {
    return 'PullrequestBase[label=$label, ref=$ref, repo=$repo, sha=$sha, user=$user, ]';
  }

  PullrequestBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    ref = json['ref'];
    repo = new PullrequestBaseRepo.fromJson(json['repo']);
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

  static List<PullrequestBase> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestBase>() : json.map((value) => new PullrequestBase.fromJson(value)).toList();
  }

  static Map<String, PullrequestBase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestBase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestBase.fromJson(value));
    }
    return map;
  }
}
