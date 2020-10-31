part of swagger.api;

class InlineResponse20014 {
  
  int totalCount = null;

  List<Job> jobs = [];

  InlineResponse20014();

  @override
  String toString() {
    return 'InlineResponse20014[totalCount=$totalCount, jobs=$jobs, ]';
  }

  InlineResponse20014.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    jobs = Job.listFromJson(json['jobs']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'jobs': jobs
     };
  }

  static List<InlineResponse20014> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20014>() : json.map((value) => new InlineResponse20014.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20014> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20014>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20014.fromJson(value));
    }
    return map;
  }
}
