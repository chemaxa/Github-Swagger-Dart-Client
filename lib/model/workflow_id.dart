part of swagger.api;

class WorkflowId {
  
  WorkflowId();

  @override
  String toString() {
    return 'WorkflowId[]';
  }

  WorkflowId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<WorkflowId> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkflowId>() : json.map((value) => new WorkflowId.fromJson(value)).toList();
  }

  static Map<String, WorkflowId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkflowId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkflowId.fromJson(value));
    }
    return map;
  }
}
