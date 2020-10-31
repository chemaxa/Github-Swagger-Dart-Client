part of swagger.api;

class JobSteps {
  /* The phase of the lifecycle that the job is currently in. */
  String status = null;
  //enum statusEnum {  queued,  in_progress,  completed,  };
/* The outcome of the job. */
  String conclusion = null;
/* The name of the job. */
  String name = null;

  int number = null;
/* The time that the step started, in ISO 8601 format. */
  DateTime startedAt = null;
/* The time that the job finished, in ISO 8601 format. */
  DateTime completedAt = null;

  JobSteps();

  @override
  String toString() {
    return 'JobSteps[status=$status, conclusion=$conclusion, name=$name, number=$number, startedAt=$startedAt, completedAt=$completedAt, ]';
  }

  JobSteps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    conclusion = json['conclusion'];
    name = json['name'];
    number = json['number'];
    startedAt = json['started_at'] == null ? null : DateTime.parse(json['started_at']);
    completedAt = json['completed_at'] == null ? null : DateTime.parse(json['completed_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'conclusion': conclusion,
      'name': name,
      'number': number,
      'started_at': startedAt == null ? '' : startedAt.toUtc().toIso8601String(),
      'completed_at': completedAt == null ? '' : completedAt.toUtc().toIso8601String()
     };
  }

  static List<JobSteps> listFromJson(List<dynamic> json) {
    return json == null ? new List<JobSteps>() : json.map((value) => new JobSteps.fromJson(value)).toList();
  }

  static Map<String, JobSteps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JobSteps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new JobSteps.fromJson(value));
    }
    return map;
  }
}
