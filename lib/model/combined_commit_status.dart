part of swagger.api;

class CombinedCommitStatus {
  
  String state = null;

  List<SimpleCommitStatus> statuses = [];

  String sha = null;

  int totalCount = null;

  MinimalRepository repository = null;

  String commitUrl = null;

  String url = null;

  CombinedCommitStatus();

  @override
  String toString() {
    return 'CombinedCommitStatus[state=$state, statuses=$statuses, sha=$sha, totalCount=$totalCount, repository=$repository, commitUrl=$commitUrl, url=$url, ]';
  }

  CombinedCommitStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = json['state'];
    statuses = SimpleCommitStatus.listFromJson(json['statuses']);
    sha = json['sha'];
    totalCount = json['total_count'];
    repository = new MinimalRepository.fromJson(json['repository']);
    commitUrl = json['commit_url'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'statuses': statuses,
      'sha': sha,
      'total_count': totalCount,
      'repository': repository,
      'commit_url': commitUrl,
      'url': url
     };
  }

  static List<CombinedCommitStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<CombinedCommitStatus>() : json.map((value) => new CombinedCommitStatus.fromJson(value)).toList();
  }

  static Map<String, CombinedCommitStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CombinedCommitStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CombinedCommitStatus.fromJson(value));
    }
    return map;
  }
}
