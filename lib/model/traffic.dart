part of swagger.api;

class Traffic {
  
  DateTime timestamp = null;

  int uniques = null;

  int count = null;

  Traffic();

  @override
  String toString() {
    return 'Traffic[timestamp=$timestamp, uniques=$uniques, count=$count, ]';
  }

  Traffic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timestamp = json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
    uniques = json['uniques'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String(),
      'uniques': uniques,
      'count': count
     };
  }

  static List<Traffic> listFromJson(List<dynamic> json) {
    return json == null ? new List<Traffic>() : json.map((value) => new Traffic.fromJson(value)).toList();
  }

  static Map<String, Traffic> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Traffic>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Traffic.fromJson(value));
    }
    return map;
  }
}
