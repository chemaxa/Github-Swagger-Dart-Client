part of swagger.api;

class Body116 {
  /* The title of the milestone. */
  String title = null;
/* The state of the milestone. Either `open` or `closed`. */
  String state = StateEnum.open_;
  //enum stateEnum {  open,  closed,  };
/* A description of the milestone. */
  String description = null;
/* The milestone due date. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. */
  String dueOn = null;

  Body116();

  @override
  String toString() {
    return 'Body116[title=$title, state=$state, description=$description, dueOn=$dueOn, ]';
  }

  Body116.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    state = json['state'];
    description = json['description'];
    dueOn = json['due_on'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'state': state,
      'description': description,
      'due_on': dueOn
     };
  }

  static List<Body116> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body116>() : json.map((value) => new Body116.fromJson(value)).toList();
  }

  static Map<String, Body116> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body116>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body116.fromJson(value));
    }
    return map;
  }
}
