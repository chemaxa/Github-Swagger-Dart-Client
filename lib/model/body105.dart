part of swagger.api;

class Body105 {
  /* Usernames of assignees to remove from an issue. _NOTE: Only users with push access can remove assignees from an issue. Assignees are silently ignored otherwise._ */
  List<String> assignees = [];

  Body105();

  @override
  String toString() {
    return 'Body105[assignees=$assignees, ]';
  }

  Body105.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignees = (json['assignees'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'assignees': assignees
     };
  }

  static List<Body105> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body105>() : json.map((value) => new Body105.fromJson(value)).toList();
  }

  static Map<String, Body105> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body105>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body105.fromJson(value));
    }
    return map;
  }
}
