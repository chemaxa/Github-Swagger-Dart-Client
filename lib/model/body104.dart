part of swagger.api;

class Body104 {
  /* Usernames of people to assign this issue to. _NOTE: Only users with push access can add assignees to an issue. Assignees are silently ignored otherwise._ */
  List<String> assignees = [];

  Body104();

  @override
  String toString() {
    return 'Body104[assignees=$assignees, ]';
  }

  Body104.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignees = (json['assignees'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'assignees': assignees
     };
  }

  static List<Body104> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body104>() : json.map((value) => new Body104.fromJson(value)).toList();
  }

  static Map<String, Body104> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body104>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body104.fromJson(value));
    }
    return map;
  }
}
