part of swagger.api;

class CommitStats {
  
  int additions = null;

  int deletions = null;

  int total = null;

  CommitStats();

  @override
  String toString() {
    return 'CommitStats[additions=$additions, deletions=$deletions, total=$total, ]';
  }

  CommitStats.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    additions = json['additions'];
    deletions = json['deletions'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    return {
      'additions': additions,
      'deletions': deletions,
      'total': total
     };
  }

  static List<CommitStats> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitStats>() : json.map((value) => new CommitStats.fromJson(value)).toList();
  }

  static Map<String, CommitStats> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitStats>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitStats.fromJson(value));
    }
    return map;
  }
}
