part of swagger.api;

class ContentTraffic {
  
  String path = null;

  String title = null;

  int count = null;

  int uniques = null;

  ContentTraffic();

  @override
  String toString() {
    return 'ContentTraffic[path=$path, title=$title, count=$count, uniques=$uniques, ]';
  }

  ContentTraffic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['path'];
    title = json['title'];
    count = json['count'];
    uniques = json['uniques'];
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'title': title,
      'count': count,
      'uniques': uniques
     };
  }

  static List<ContentTraffic> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContentTraffic>() : json.map((value) => new ContentTraffic.fromJson(value)).toList();
  }

  static Map<String, ContentTraffic> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContentTraffic>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContentTraffic.fromJson(value));
    }
    return map;
  }
}
