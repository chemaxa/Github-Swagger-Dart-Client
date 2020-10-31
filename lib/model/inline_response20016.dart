part of swagger.api;

class InlineResponse20016 {
  
  int totalCount = null;

  List<Workflow> workflows = [];

  InlineResponse20016();

  @override
  String toString() {
    return 'InlineResponse20016[totalCount=$totalCount, workflows=$workflows, ]';
  }

  InlineResponse20016.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    workflows = Workflow.listFromJson(json['workflows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'workflows': workflows
     };
  }

  static List<InlineResponse20016> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20016>() : json.map((value) => new InlineResponse20016.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20016> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20016>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20016.fromJson(value));
    }
    return map;
  }
}
