part of swagger.api;

class GistcommitChangeStatus {
  
  int total = null;

  int additions = null;

  int deletions = null;

  GistcommitChangeStatus();

  @override
  String toString() {
    return 'GistcommitChangeStatus[total=$total, additions=$additions, deletions=$deletions, ]';
  }

  GistcommitChangeStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    additions = json['additions'];
    deletions = json['deletions'];
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'additions': additions,
      'deletions': deletions
     };
  }

  static List<GistcommitChangeStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistcommitChangeStatus>() : json.map((value) => new GistcommitChangeStatus.fromJson(value)).toList();
  }

  static Map<String, GistcommitChangeStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistcommitChangeStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistcommitChangeStatus.fromJson(value));
    }
    return map;
  }
}
