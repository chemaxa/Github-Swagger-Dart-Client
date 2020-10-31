part of swagger.api;

class CommitActivity {
  
  List<int> days = [];

  int total = null;

  int week = null;

  CommitActivity();

  @override
  String toString() {
    return 'CommitActivity[days=$days, total=$total, week=$week, ]';
  }

  CommitActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    days = (json['days'] as List).map((item) => item as int).toList();
    total = json['total'];
    week = json['week'];
  }

  Map<String, dynamic> toJson() {
    return {
      'days': days,
      'total': total,
      'week': week
     };
  }

  static List<CommitActivity> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitActivity>() : json.map((value) => new CommitActivity.fromJson(value)).toList();
  }

  static Map<String, CommitActivity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitActivity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitActivity.fromJson(value));
    }
    return map;
  }
}
