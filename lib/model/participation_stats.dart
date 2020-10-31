part of swagger.api;

class ParticipationStats {
  
  List<int> all = [];

  List<int> owner = [];

  ParticipationStats();

  @override
  String toString() {
    return 'ParticipationStats[all=$all, owner=$owner, ]';
  }

  ParticipationStats.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    all = (json['all'] as List).map((item) => item as int).toList();
    owner = (json['owner'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'all': all,
      'owner': owner
     };
  }

  static List<ParticipationStats> listFromJson(List<dynamic> json) {
    return json == null ? new List<ParticipationStats>() : json.map((value) => new ParticipationStats.fromJson(value)).toList();
  }

  static Map<String, ParticipationStats> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ParticipationStats>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ParticipationStats.fromJson(value));
    }
    return map;
  }
}
