part of swagger.api;

class InlineResponse20017 {
  
  int totalCount = null;

  List<CheckRun> checkRuns = [];

  InlineResponse20017();

  @override
  String toString() {
    return 'InlineResponse20017[totalCount=$totalCount, checkRuns=$checkRuns, ]';
  }

  InlineResponse20017.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    checkRuns = CheckRun.listFromJson(json['check_runs']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'check_runs': checkRuns
     };
  }

  static List<InlineResponse20017> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20017>() : json.map((value) => new InlineResponse20017.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20017> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20017>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20017.fromJson(value));
    }
    return map;
  }
}
