part of swagger.api;

class CloneTraffic {
  
  int count = null;

  int uniques = null;

  List<Traffic> clones = [];

  CloneTraffic();

  @override
  String toString() {
    return 'CloneTraffic[count=$count, uniques=$uniques, clones=$clones, ]';
  }

  CloneTraffic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    uniques = json['uniques'];
    clones = Traffic.listFromJson(json['clones']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'uniques': uniques,
      'clones': clones
     };
  }

  static List<CloneTraffic> listFromJson(List<dynamic> json) {
    return json == null ? new List<CloneTraffic>() : json.map((value) => new CloneTraffic.fromJson(value)).toList();
  }

  static Map<String, CloneTraffic> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CloneTraffic>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CloneTraffic.fromJson(value));
    }
    return map;
  }
}
