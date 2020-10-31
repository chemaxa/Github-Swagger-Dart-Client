part of swagger.api;

class WorkflowRun {
  /* The ID of the workflow run. */
  int id = null;

  String nodeId = null;

  String headBranch = null;
/* The SHA of the head commit that points to the version of the worflow being run. */
  String headSha = null;
/* The auto incrementing run number for the workflow run. */
  int runNumber = null;

  String event = null;

  String status = null;

  String conclusion = null;
/* The ID of the parent workflow. */
  int workflowId = null;
/* The URL to the workflow run. */
  String url = null;

  String htmlUrl = null;

  List<PullRequestMinimal> pullRequests = [];

  DateTime createdAt = null;

  DateTime updatedAt = null;
/* The URL to the jobs for the workflow run. */
  String jobsUrl = null;
/* The URL to download the logs for the workflow run. */
  String logsUrl = null;
/* The URL to the associated check suite. */
  String checkSuiteUrl = null;
/* The URL to the artifacts for the workflow run. */
  String artifactsUrl = null;
/* The URL to cancel the workflow run. */
  String cancelUrl = null;
/* The URL to rerun the workflow run. */
  String rerunUrl = null;
/* The URL to the workflow. */
  String workflowUrl = null;

  SimpleCommit headCommit = null;

  MinimalRepository repository = null;

  MinimalRepository headRepository = null;

  int headRepositoryId = null;

  WorkflowRun();

  @override
  String toString() {
    return 'WorkflowRun[id=$id, nodeId=$nodeId, headBranch=$headBranch, headSha=$headSha, runNumber=$runNumber, event=$event, status=$status, conclusion=$conclusion, workflowId=$workflowId, url=$url, htmlUrl=$htmlUrl, pullRequests=$pullRequests, createdAt=$createdAt, updatedAt=$updatedAt, jobsUrl=$jobsUrl, logsUrl=$logsUrl, checkSuiteUrl=$checkSuiteUrl, artifactsUrl=$artifactsUrl, cancelUrl=$cancelUrl, rerunUrl=$rerunUrl, workflowUrl=$workflowUrl, headCommit=$headCommit, repository=$repository, headRepository=$headRepository, headRepositoryId=$headRepositoryId, ]';
  }

  WorkflowRun.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    headBranch = json['head_branch'];
    headSha = json['head_sha'];
    runNumber = json['run_number'];
    event = json['event'];
    status = json['status'];
    conclusion = json['conclusion'];
    workflowId = json['workflow_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    pullRequests = PullRequestMinimal.listFromJson(json['pull_requests']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    jobsUrl = json['jobs_url'];
    logsUrl = json['logs_url'];
    checkSuiteUrl = json['check_suite_url'];
    artifactsUrl = json['artifacts_url'];
    cancelUrl = json['cancel_url'];
    rerunUrl = json['rerun_url'];
    workflowUrl = json['workflow_url'];
    headCommit = new SimpleCommit.fromJson(json['head_commit']);
    repository = new MinimalRepository.fromJson(json['repository']);
    headRepository = new MinimalRepository.fromJson(json['head_repository']);
    headRepositoryId = json['head_repository_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'head_branch': headBranch,
      'head_sha': headSha,
      'run_number': runNumber,
      'event': event,
      'status': status,
      'conclusion': conclusion,
      'workflow_id': workflowId,
      'url': url,
      'html_url': htmlUrl,
      'pull_requests': pullRequests,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'jobs_url': jobsUrl,
      'logs_url': logsUrl,
      'check_suite_url': checkSuiteUrl,
      'artifacts_url': artifactsUrl,
      'cancel_url': cancelUrl,
      'rerun_url': rerunUrl,
      'workflow_url': workflowUrl,
      'head_commit': headCommit,
      'repository': repository,
      'head_repository': headRepository,
      'head_repository_id': headRepositoryId
     };
  }

  static List<WorkflowRun> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkflowRun>() : json.map((value) => new WorkflowRun.fromJson(value)).toList();
  }

  static Map<String, WorkflowRun> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkflowRun>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkflowRun.fromJson(value));
    }
    return map;
  }
}
