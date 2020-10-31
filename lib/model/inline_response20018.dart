part of swagger.api;

class InlineResponse20018 {
  
  int totalCount = null;

  List<CheckSuite> checkSuites = [];

  InlineResponse20018();

  @override
  String toString() {
    return 'InlineResponse20018[totalCount=$totalCount, checkSuites=$checkSuites, ]';
  }

  InlineResponse20018.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    checkSuites = CheckSuite.listFromJson(json['check_suites']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'check_suites': checkSuites
     };
  }

  static List<InlineResponse20018> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20018>() : json.map((value) => new InlineResponse20018.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20018> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20018>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20018.fromJson(value));
    }
    return map;
  }
}
