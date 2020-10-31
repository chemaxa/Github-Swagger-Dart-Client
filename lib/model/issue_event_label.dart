part of swagger.api;

class IssueEventLabel {
  
  String name = null;

  String color = null;

  IssueEventLabel();

  @override
  String toString() {
    return 'IssueEventLabel[name=$name, color=$color, ]';
  }

  IssueEventLabel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color
     };
  }

  static List<IssueEventLabel> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueEventLabel>() : json.map((value) => new IssueEventLabel.fromJson(value)).toList();
  }

  static Map<String, IssueEventLabel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueEventLabel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueEventLabel.fromJson(value));
    }
    return map;
  }
}
