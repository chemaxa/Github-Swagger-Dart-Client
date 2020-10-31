part of swagger.api;

class ReferrerTraffic {
  
  String referrer = null;

  int count = null;

  int uniques = null;

  ReferrerTraffic();

  @override
  String toString() {
    return 'ReferrerTraffic[referrer=$referrer, count=$count, uniques=$uniques, ]';
  }

  ReferrerTraffic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    referrer = json['referrer'];
    count = json['count'];
    uniques = json['uniques'];
  }

  Map<String, dynamic> toJson() {
    return {
      'referrer': referrer,
      'count': count,
      'uniques': uniques
     };
  }

  static List<ReferrerTraffic> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReferrerTraffic>() : json.map((value) => new ReferrerTraffic.fromJson(value)).toList();
  }

  static Map<String, ReferrerTraffic> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReferrerTraffic>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReferrerTraffic.fromJson(value));
    }
    return map;
  }
}
