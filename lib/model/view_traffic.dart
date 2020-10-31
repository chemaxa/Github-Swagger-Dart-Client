part of swagger.api;

class ViewTraffic {
  
  int count = null;

  int uniques = null;

  List<Traffic> views = [];

  ViewTraffic();

  @override
  String toString() {
    return 'ViewTraffic[count=$count, uniques=$uniques, views=$views, ]';
  }

  ViewTraffic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    uniques = json['uniques'];
    views = Traffic.listFromJson(json['views']);
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'uniques': uniques,
      'views': views
     };
  }

  static List<ViewTraffic> listFromJson(List<dynamic> json) {
    return json == null ? new List<ViewTraffic>() : json.map((value) => new ViewTraffic.fromJson(value)).toList();
  }

  static Map<String, ViewTraffic> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ViewTraffic>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ViewTraffic.fromJson(value));
    }
    return map;
  }
}
