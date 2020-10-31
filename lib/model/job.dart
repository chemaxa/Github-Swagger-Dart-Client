part of swagger.api;

class Job {
  /* The id of the job. */
  int id = null;
/* The id of the associated workflow run. */
  int runId = null;

  String runUrl = null;

  String nodeId = null;
/* The SHA of the commit that is being run. */
  String headSha = null;

  String url = null;

  String htmlUrl = null;
/* The phase of the lifecycle that the job is currently in. */
  String status = null;
  //enum statusEnum {  queued,  in_progress,  completed,  };
/* The outcome of the job. */
  String conclusion = null;
/* The time that the job started, in ISO 8601 format. */
  DateTime startedAt = null;
/* The time that the job finished, in ISO 8601 format. */
  DateTime completedAt = null;
/* The name of the job. */
  String name = null;
/* Steps in this job. */
  List<JobSteps> steps = [];

  String checkRunUrl = null;

  Job();

  @override
  String toString() {
    return 'Job[id=$id, runId=$runId, runUrl=$runUrl, nodeId=$nodeId, headSha=$headSha, url=$url, htmlUrl=$htmlUrl, status=$status, conclusion=$conclusion, startedAt=$startedAt, completedAt=$completedAt, name=$name, steps=$steps, checkRunUrl=$checkRunUrl, ]';
  }

  Job.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    runId = json['run_id'];
    runUrl = json['run_url'];
    nodeId = json['node_id'];
    headSha = json['head_sha'];
    url = json['url'];
    htmlUrl = json['html_url'];
    status = json['status'];
    conclusion = json['conclusion'];
    startedAt = json['started_at'] == null ? null : DateTime.parse(json['started_at']);
    completedAt = json['completed_at'] == null ? null : DateTime.parse(json['completed_at']);
    name = json['name'];
    steps = JobSteps.listFromJson(json['steps']);
    checkRunUrl = json['check_run_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'run_id': runId,
      'run_url': runUrl,
      'node_id': nodeId,
      'head_sha': headSha,
      'url': url,
      'html_url': htmlUrl,
      'status': status,
      'conclusion': conclusion,
      'started_at': startedAt == null ? '' : startedAt.toUtc().toIso8601String(),
      'completed_at': completedAt == null ? '' : completedAt.toUtc().toIso8601String(),
      'name': name,
      'steps': steps,
      'check_run_url': checkRunUrl
     };
  }

  static List<Job> listFromJson(List<dynamic> json) {
    return json == null ? new List<Job>() : json.map((value) => new Job.fromJson(value)).toList();
  }

  static Map<String, Job> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Job>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Job.fromJson(value));
    }
    return map;
  }
}
