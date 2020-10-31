part of swagger.api;

class IssueEventMilestone {
  
  String title = null;

  IssueEventMilestone();

  @override
  String toString() {
    return 'IssueEventMilestone[title=$title, ]';
  }

  IssueEventMilestone.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title
     };
  }

  static List<IssueEventMilestone> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueEventMilestone>() : json.map((value) => new IssueEventMilestone.fromJson(value)).toList();
  }

  static Map<String, IssueEventMilestone> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueEventMilestone>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueEventMilestone.fromJson(value));
    }
    return map;
  }
}
