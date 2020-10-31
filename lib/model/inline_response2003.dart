part of swagger.api;

class InlineResponse2003 {
  
  double totalCount = null;

  List<RunnerGroupsEnterprise> runnerGroups = [];

  InlineResponse2003();

  @override
  String toString() {
    return 'InlineResponse2003[totalCount=$totalCount, runnerGroups=$runnerGroups, ]';
  }

  InlineResponse2003.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    runnerGroups = RunnerGroupsEnterprise.listFromJson(json['runner_groups']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'runner_groups': runnerGroups
     };
  }

  static List<InlineResponse2003> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2003>() : json.map((value) => new InlineResponse2003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2003>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2003.fromJson(value));
    }
    return map;
  }
}
