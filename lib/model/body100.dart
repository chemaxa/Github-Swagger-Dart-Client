part of swagger.api;

class Body100 {
  /* The title of the issue. */
  String title = null;
/* The contents of the issue. */
  String body = null;
/* Login for the user that this issue should be assigned to. _NOTE: Only users with push access can set the assignee for new issues. The assignee is silently dropped otherwise. **This field is deprecated.**_ */
  String assignee = null;
/* The `number` of the milestone to associate this issue with. _NOTE: Only users with push access can set the milestone for new issues. The milestone is silently dropped otherwise._ */
  int milestone = null;
/* Labels to associate with this issue. _NOTE: Only users with push access can set labels for new issues. Labels are silently dropped otherwise._ */
  List<OneOfbody100LabelsItems> labels = [];
/* Logins for Users to assign to this issue. _NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise._ */
  List<String> assignees = [];

  Body100();

  @override
  String toString() {
    return 'Body100[title=$title, body=$body, assignee=$assignee, milestone=$milestone, labels=$labels, assignees=$assignees, ]';
  }

  Body100.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    body = json['body'];
    assignee = json['assignee'];
    milestone = json['milestone'];
    labels = Object.listFromJson(json['labels']);
    assignees = (json['assignees'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'assignee': assignee,
      'milestone': milestone,
      'labels': labels,
      'assignees': assignees
     };
  }

  static List<Body100> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body100>() : json.map((value) => new Body100.fromJson(value)).toList();
  }

  static Map<String, Body100> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body100>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body100.fromJson(value));
    }
    return map;
  }
}
