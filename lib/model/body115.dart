part of swagger.api;

class Body115 {
  /* The title of the milestone. */
  String title = null;
/* The state of the milestone. Either `open` or `closed`. */
  String state = StateEnum.open_;
  //enum stateEnum {  open,  closed,  };
/* A description of the milestone. */
  String description = null;
/* The milestone due date. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. */
  String dueOn = null;

  Body115();

  @override
  String toString() {
    return 'Body115[title=$title, state=$state, description=$description, dueOn=$dueOn, ]';
  }

  Body115.fromJson(Map<String, dynamic> json) {
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

  static List<Body115> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body115>() : json.map((value) => new Body115.fromJson(value)).toList();
  }

  static Map<String, Body115> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body115>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body115.fromJson(value));
    }
    return map;
  }
}
