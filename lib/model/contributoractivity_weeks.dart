part of swagger.api;

class ContributoractivityWeeks {
  
  String w = null;

  int a = null;

  int d = null;

  int c = null;

  ContributoractivityWeeks();

  @override
  String toString() {
    return 'ContributoractivityWeeks[w=$w, a=$a, d=$d, c=$c, ]';
  }

  ContributoractivityWeeks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    w = json['w'];
    a = json['a'];
    d = json['d'];
    c = json['c'];
  }

  Map<String, dynamic> toJson() {
    return {
      'w': w,
      'a': a,
      'd': d,
      'c': c
     };
  }

  static List<ContributoractivityWeeks> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContributoractivityWeeks>() : json.map((value) => new ContributoractivityWeeks.fromJson(value)).toList();
  }

  static Map<String, ContributoractivityWeeks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContributoractivityWeeks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContributoractivityWeeks.fromJson(value));
    }
    return map;
  }
}
