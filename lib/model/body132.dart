part of swagger.api;

class Body132 {
  /* The message for the pull request review dismissal */
  String message = null;

  String event = null;

  Body132();

  @override
  String toString() {
    return 'Body132[message=$message, event=$event, ]';
  }

  Body132.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    event = json['event'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'event': event
     };
  }

  static List<Body132> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body132>() : json.map((value) => new Body132.fromJson(value)).toList();
  }

  static Map<String, Body132> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body132>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body132.fromJson(value));
    }
    return map;
  }
}
