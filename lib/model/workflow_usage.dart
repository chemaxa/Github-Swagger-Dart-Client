part of swagger.api;

class WorkflowUsage {
  
  WorkflowusageBillable billable = null;

  WorkflowUsage();

  @override
  String toString() {
    return 'WorkflowUsage[billable=$billable, ]';
  }

  WorkflowUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    billable = new WorkflowusageBillable.fromJson(json['billable']);
  }

  Map<String, dynamic> toJson() {
    return {
      'billable': billable
     };
  }

  static List<WorkflowUsage> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkflowUsage>() : json.map((value) => new WorkflowUsage.fromJson(value)).toList();
  }

  static Map<String, WorkflowUsage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkflowUsage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkflowUsage.fromJson(value));
    }
    return map;
  }
}
