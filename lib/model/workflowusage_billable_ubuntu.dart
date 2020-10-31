part of swagger.api;

class WorkflowusageBillableUBUNTU {
  
  int totalMs = null;

  WorkflowusageBillableUBUNTU();

  @override
  String toString() {
    return 'WorkflowusageBillableUBUNTU[totalMs=$totalMs, ]';
  }

  WorkflowusageBillableUBUNTU.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalMs = json['total_ms'];
  }

  Map<String, dynamic> toJson() {
    return {
      'total_ms': totalMs
     };
  }

  static List<WorkflowusageBillableUBUNTU> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkflowusageBillableUBUNTU>() : json.map((value) => new WorkflowusageBillableUBUNTU.fromJson(value)).toList();
  }

  static Map<String, WorkflowusageBillableUBUNTU> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkflowusageBillableUBUNTU>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkflowusageBillableUBUNTU.fromJson(value));
    }
    return map;
  }
}
