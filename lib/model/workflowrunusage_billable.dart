part of swagger.api;

class WorkflowrunusageBillable {
  
  WorkflowrunusageBillableUBUNTU UBUNTU = null;

  WorkflowrunusageBillableUBUNTU MACOS = null;

  WorkflowrunusageBillableUBUNTU WINDOWS = null;

  WorkflowrunusageBillable();

  @override
  String toString() {
    return 'WorkflowrunusageBillable[UBUNTU=$UBUNTU, MACOS=$MACOS, WINDOWS=$WINDOWS, ]';
  }

  WorkflowrunusageBillable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    UBUNTU = new WorkflowrunusageBillableUBUNTU.fromJson(json['UBUNTU']);
    MACOS = new WorkflowrunusageBillableUBUNTU.fromJson(json['MACOS']);
    WINDOWS = new WorkflowrunusageBillableUBUNTU.fromJson(json['WINDOWS']);
  }

  Map<String, dynamic> toJson() {
    return {
      'UBUNTU': UBUNTU,
      'MACOS': MACOS,
      'WINDOWS': WINDOWS
     };
  }

  static List<WorkflowrunusageBillable> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkflowrunusageBillable>() : json.map((value) => new WorkflowrunusageBillable.fromJson(value)).toList();
  }

  static Map<String, WorkflowrunusageBillable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkflowrunusageBillable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkflowrunusageBillable.fromJson(value));
    }
    return map;
  }
}
