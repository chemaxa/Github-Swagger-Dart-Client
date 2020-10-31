part of swagger.api;

class CheckSuite {
  
  int id = null;

  String nodeId = null;

  String headBranch = null;
/* The SHA of the head commit that is being checked. */
  String headSha = null;

  String status = null;

  String conclusion = null;

  String url = null;

  String before = null;

  String after = null;

  List<PullRequestMinimal> pullRequests = [];

  AllOfcheckSuiteApp app = null;

  MinimalRepository repository = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  SimpleCommit headCommit = null;

  int latestCheckRunsCount = null;

  String checkRunsUrl = null;

  CheckSuite();

  @override
  String toString() {
    return 'CheckSuite[id=$id, nodeId=$nodeId, headBranch=$headBranch, headSha=$headSha, status=$status, conclusion=$conclusion, url=$url, before=$before, after=$after, pullRequests=$pullRequests, app=$app, repository=$repository, createdAt=$createdAt, updatedAt=$updatedAt, headCommit=$headCommit, latestCheckRunsCount=$latestCheckRunsCount, checkRunsUrl=$checkRunsUrl, ]';
  }

  CheckSuite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    headBranch = json['head_branch'];
    headSha = json['head_sha'];
    status = json['status'];
    conclusion = json['conclusion'];
    url = json['url'];
    before = json['before'];
    after = json['after'];
    pullRequests = PullRequestMinimal.listFromJson(json['pull_requests']);
    app = new AllOfcheckSuiteApp.fromJson(json['app']);
    repository = new MinimalRepository.fromJson(json['repository']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    headCommit = new SimpleCommit.fromJson(json['head_commit']);
    latestCheckRunsCount = json['latest_check_runs_count'];
    checkRunsUrl = json['check_runs_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'head_branch': headBranch,
      'head_sha': headSha,
      'status': status,
      'conclusion': conclusion,
      'url': url,
      'before': before,
      'after': after,
      'pull_requests': pullRequests,
      'app': app,
      'repository': repository,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'head_commit': headCommit,
      'latest_check_runs_count': latestCheckRunsCount,
      'check_runs_url': checkRunsUrl
     };
  }

  static List<CheckSuite> listFromJson(List<dynamic> json) {
    return json == null ? new List<CheckSuite>() : json.map((value) => new CheckSuite.fromJson(value)).toList();
  }

  static Map<String, CheckSuite> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CheckSuite>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CheckSuite.fromJson(value));
    }
    return map;
  }
}
