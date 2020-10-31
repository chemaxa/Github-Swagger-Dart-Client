part of swagger.api;

class InlineResponse20013 {
  
  int totalCount = null;

  List<WorkflowRun> workflowRuns = [];

  InlineResponse20013();

  @override
  String toString() {
    return 'InlineResponse20013[totalCount=$totalCount, workflowRuns=$workflowRuns, ]';
  }

  InlineResponse20013.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    workflowRuns = WorkflowRun.listFromJson(json['workflow_runs']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'workflow_runs': workflowRuns
     };
  }

  static List<InlineResponse20013> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013>() : json.map((value) => new InlineResponse20013.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013.fromJson(value));
    }
    return map;
  }
}
