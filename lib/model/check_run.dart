part of swagger.api;

class CheckRun {
  /* The id of the check. */
  int id = null;
/* The SHA of the commit that is being checked. */
  String headSha = null;

  String nodeId = null;

  String externalId = null;

  String url = null;

  String htmlUrl = null;

  String detailsUrl = null;
/* The phase of the lifecycle that the check is currently in. */
  String status = null;
  //enum statusEnum {  queued,  in_progress,  completed,  };

  String conclusion = null;

  DateTime startedAt = null;

  DateTime completedAt = null;

  CheckrunOutput output = null;
/* The name of the check. */
  String name = null;

  CheckrunCheckSuite checkSuite = null;

  AllOfcheckRunApp app = null;

  List<PullRequestMinimal> pullRequests = [];

  CheckRun();

  @override
  String toString() {
    return 'CheckRun[id=$id, headSha=$headSha, nodeId=$nodeId, externalId=$externalId, url=$url, htmlUrl=$htmlUrl, detailsUrl=$detailsUrl, status=$status, conclusion=$conclusion, startedAt=$startedAt, completedAt=$completedAt, output=$output, name=$name, checkSuite=$checkSuite, app=$app, pullRequests=$pullRequests, ]';
  }

  CheckRun.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    headSha = json['head_sha'];
    nodeId = json['node_id'];
    externalId = json['external_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    detailsUrl = json['details_url'];
    status = json['status'];
    conclusion = json['conclusion'];
    startedAt = json['started_at'] == null ? null : DateTime.parse(json['started_at']);
    completedAt = json['completed_at'] == null ? null : DateTime.parse(json['completed_at']);
    output = new CheckrunOutput.fromJson(json['output']);
    name = json['name'];
    checkSuite = new CheckrunCheckSuite.fromJson(json['check_suite']);
    app = new AllOfcheckRunApp.fromJson(json['app']);
    pullRequests = PullRequestMinimal.listFromJson(json['pull_requests']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'head_sha': headSha,
      'node_id': nodeId,
      'external_id': externalId,
      'url': url,
      'html_url': htmlUrl,
      'details_url': detailsUrl,
      'status': status,
      'conclusion': conclusion,
      'started_at': startedAt == null ? '' : startedAt.toUtc().toIso8601String(),
      'completed_at': completedAt == null ? '' : completedAt.toUtc().toIso8601String(),
      'output': output,
      'name': name,
      'check_suite': checkSuite,
      'app': app,
      'pull_requests': pullRequests
     };
  }

  static List<CheckRun> listFromJson(List<dynamic> json) {
    return json == null ? new List<CheckRun>() : json.map((value) => new CheckRun.fromJson(value)).toList();
  }

  static Map<String, CheckRun> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CheckRun>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CheckRun.fromJson(value));
    }
    return map;
  }
}
