part of swagger.api;

class InlineResponse2007 {
  
  double totalCount = null;

  List<RunnerGroupsOrg> runnerGroups = [];

  InlineResponse2007();

  @override
  String toString() {
    return 'InlineResponse2007[totalCount=$totalCount, runnerGroups=$runnerGroups, ]';
  }

  InlineResponse2007.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    runnerGroups = RunnerGroupsOrg.listFromJson(json['runner_groups']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'runner_groups': runnerGroups
     };
  }

  static List<InlineResponse2007> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2007>() : json.map((value) => new InlineResponse2007.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2007> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2007>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2007.fromJson(value));
    }
    return map;
  }
}
