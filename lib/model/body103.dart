part of swagger.api;

class Body103 {
  /* The title of the issue. */
  String title = null;
/* The contents of the issue. */
  String body = null;
/* Login for the user that this issue should be assigned to. **This field is deprecated.** */
  String assignee = null;
/* State of the issue. Either `open` or `closed`. */
  String state = null;
  //enum stateEnum {  open,  closed,  };
/* The `number` of the milestone to associate this issue with or `null` to remove current. _NOTE: Only users with push access can set the milestone for issues. The milestone is silently dropped otherwise._ */
  int milestone = null;
/* Labels to associate with this issue. Pass one or more Labels to _replace_ the set of Labels on this Issue. Send an empty array (`[]`) to clear all Labels from the Issue. _NOTE: Only users with push access can set labels for issues. Labels are silently dropped otherwise._ */
  List<OneOfbody103LabelsItems> labels = [];
/* Logins for Users to assign to this issue. Pass one or more user logins to _replace_ the set of assignees on this Issue. Send an empty array (`[]`) to clear all assignees from the Issue. _NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise._ */
  List<String> assignees = [];

  Body103();

  @override
  String toString() {
    return 'Body103[title=$title, body=$body, assignee=$assignee, state=$state, milestone=$milestone, labels=$labels, assignees=$assignees, ]';
  }

  Body103.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    body = json['body'];
    assignee = json['assignee'];
    state = json['state'];
    milestone = json['milestone'];
    labels = Object.listFromJson(json['labels']);
    assignees = (json['assignees'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'assignee': assignee,
      'state': state,
      'milestone': milestone,
      'labels': labels,
      'assignees': assignees
     };
  }

  static List<Body103> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body103>() : json.map((value) => new Body103.fromJson(value)).toList();
  }

  static Map<String, Body103> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body103>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body103.fromJson(value));
    }
    return map;
  }
}
