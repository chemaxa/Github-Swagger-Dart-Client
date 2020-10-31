part of swagger.api;

class WorkflowRunUsage {
  
  WorkflowrunusageBillable billable = null;

  int runDurationMs = null;

  WorkflowRunUsage();

  @override
  String toString() {
    return 'WorkflowRunUsage[billable=$billable, runDurationMs=$runDurationMs, ]';
  }

  WorkflowRunUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    billable = new WorkflowrunusageBillable.fromJson(json['billable']);
    runDurationMs = json['run_duration_ms'];
  }

  Map<String, dynamic> toJson() {
    return {
      'billable': billable,
      'run_duration_ms': runDurationMs
     };
  }

  static List<WorkflowRunUsage> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkflowRunUsage>() : json.map((value) => new WorkflowRunUsage.fromJson(value)).toList();
  }

  static Map<String, WorkflowRunUsage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkflowRunUsage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkflowRunUsage.fromJson(value));
    }
    return map;
  }
}
