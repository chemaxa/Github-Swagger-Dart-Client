part of swagger.api;

class PageBuildStatus {
  
  String url = null;

  String status = null;

  PageBuildStatus();

  @override
  String toString() {
    return 'PageBuildStatus[url=$url, status=$status, ]';
  }

  PageBuildStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'status': status
     };
  }

  static List<PageBuildStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<PageBuildStatus>() : json.map((value) => new PageBuildStatus.fromJson(value)).toList();
  }

  static Map<String, PageBuildStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PageBuildStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PageBuildStatus.fromJson(value));
    }
    return map;
  }
}
