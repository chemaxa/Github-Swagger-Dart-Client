part of swagger.api;

class InlineResponse2006 {
  
  double totalCount = null;

  List<Repository> repositories = [];

  InlineResponse2006();

  @override
  String toString() {
    return 'InlineResponse2006[totalCount=$totalCount, repositories=$repositories, ]';
  }

  InlineResponse2006.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    repositories = Repository.listFromJson(json['repositories']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'repositories': repositories
     };
  }

  static List<InlineResponse2006> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2006>() : json.map((value) => new InlineResponse2006.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2006> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2006>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2006.fromJson(value));
    }
    return map;
  }
}
