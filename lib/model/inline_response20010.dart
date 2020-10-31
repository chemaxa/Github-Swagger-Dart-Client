part of swagger.api;

class InlineResponse20010 {
  
  int totalCount = null;

  List<MinimalRepository> repositories = [];

  InlineResponse20010();

  @override
  String toString() {
    return 'InlineResponse20010[totalCount=$totalCount, repositories=$repositories, ]';
  }

  InlineResponse20010.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    repositories = MinimalRepository.listFromJson(json['repositories']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'repositories': repositories
     };
  }

  static List<InlineResponse20010> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20010>() : json.map((value) => new InlineResponse20010.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20010> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20010>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20010.fromJson(value));
    }
    return map;
  }
}
