part of swagger.api;

class GistfullChangeStatus {
  
  int deletions = null;

  int additions = null;

  int total = null;

  GistfullChangeStatus();

  @override
  String toString() {
    return 'GistfullChangeStatus[deletions=$deletions, additions=$additions, total=$total, ]';
  }

  GistfullChangeStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deletions = json['deletions'];
    additions = json['additions'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    return {
      'deletions': deletions,
      'additions': additions,
      'total': total
     };
  }

  static List<GistfullChangeStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistfullChangeStatus>() : json.map((value) => new GistfullChangeStatus.fromJson(value)).toList();
  }

  static Map<String, GistfullChangeStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistfullChangeStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistfullChangeStatus.fromJson(value));
    }
    return map;
  }
}
