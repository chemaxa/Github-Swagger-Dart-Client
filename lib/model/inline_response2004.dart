part of swagger.api;

class InlineResponse2004 {
  
  double totalCount = null;

  List<Runner> runners = [];

  InlineResponse2004();

  @override
  String toString() {
    return 'InlineResponse2004[totalCount=$totalCount, runners=$runners, ]';
  }

  InlineResponse2004.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    runners = Runner.listFromJson(json['runners']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'runners': runners
     };
  }

  static List<InlineResponse2004> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2004>() : json.map((value) => new InlineResponse2004.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2004> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2004>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2004.fromJson(value));
    }
    return map;
  }
}
