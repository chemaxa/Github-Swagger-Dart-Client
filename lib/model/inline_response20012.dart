part of swagger.api;

class InlineResponse20012 {
  
  int totalCount = null;

  List<Artifact> artifacts = [];

  InlineResponse20012();

  @override
  String toString() {
    return 'InlineResponse20012[totalCount=$totalCount, artifacts=$artifacts, ]';
  }

  InlineResponse20012.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    artifacts = Artifact.listFromJson(json['artifacts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'artifacts': artifacts
     };
  }

  static List<InlineResponse20012> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20012>() : json.map((value) => new InlineResponse20012.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20012> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20012>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20012.fromJson(value));
    }
    return map;
  }
}
