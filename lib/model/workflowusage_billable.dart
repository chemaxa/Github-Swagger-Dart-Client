part of swagger.api;

class WorkflowusageBillable {
  
  WorkflowusageBillableUBUNTU UBUNTU = null;

  WorkflowusageBillableUBUNTU MACOS = null;

  WorkflowusageBillableUBUNTU WINDOWS = null;

  WorkflowusageBillable();

  @override
  String toString() {
    return 'WorkflowusageBillable[UBUNTU=$UBUNTU, MACOS=$MACOS, WINDOWS=$WINDOWS, ]';
  }

  WorkflowusageBillable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    UBUNTU = new WorkflowusageBillableUBUNTU.fromJson(json['UBUNTU']);
    MACOS = new WorkflowusageBillableUBUNTU.fromJson(json['MACOS']);
    WINDOWS = new WorkflowusageBillableUBUNTU.fromJson(json['WINDOWS']);
  }

  Map<String, dynamic> toJson() {
    return {
      'UBUNTU': UBUNTU,
      'MACOS': MACOS,
      'WINDOWS': WINDOWS
     };
  }

  static List<WorkflowusageBillable> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkflowusageBillable>() : json.map((value) => new WorkflowusageBillable.fromJson(value)).toList();
  }

  static Map<String, WorkflowusageBillable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkflowusageBillable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkflowusageBillable.fromJson(value));
    }
    return map;
  }
}
