part of swagger.api;

class WorkflowrunusageBillableUBUNTU {
  
  int totalMs = null;

  int jobs = null;

  WorkflowrunusageBillableUBUNTU();

  @override
  String toString() {
    return 'WorkflowrunusageBillableUBUNTU[totalMs=$totalMs, jobs=$jobs, ]';
  }

  WorkflowrunusageBillableUBUNTU.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalMs = json['total_ms'];
    jobs = json['jobs'];
  }

  Map<String, dynamic> toJson() {
    return {
      'total_ms': totalMs,
      'jobs': jobs
     };
  }

  static List<WorkflowrunusageBillableUBUNTU> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkflowrunusageBillableUBUNTU>() : json.map((value) => new WorkflowrunusageBillableUBUNTU.fromJson(value)).toList();
  }

  static Map<String, WorkflowrunusageBillableUBUNTU> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkflowrunusageBillableUBUNTU>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkflowrunusageBillableUBUNTU.fromJson(value));
    }
    return map;
  }
}
