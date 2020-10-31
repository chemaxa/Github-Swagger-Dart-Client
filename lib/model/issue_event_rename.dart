part of swagger.api;

class IssueEventRename {
  
  String from = null;

  String to = null;

  IssueEventRename();

  @override
  String toString() {
    return 'IssueEventRename[from=$from, to=$to, ]';
  }

  IssueEventRename.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    from = json['from'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'to': to
     };
  }

  static List<IssueEventRename> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueEventRename>() : json.map((value) => new IssueEventRename.fromJson(value)).toList();
  }

  static Map<String, IssueEventRename> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueEventRename>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueEventRename.fromJson(value));
    }
    return map;
  }
}
