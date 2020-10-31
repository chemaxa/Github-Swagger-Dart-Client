part of swagger.api;

class EventPayload {
  
  String action = null;

  IssueSimple issue = null;

  IssueComment comment = null;

  List<EventPayloadPages> pages = [];

  EventPayload();

  @override
  String toString() {
    return 'EventPayload[action=$action, issue=$issue, comment=$comment, pages=$pages, ]';
  }

  EventPayload.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    action = json['action'];
    issue = new IssueSimple.fromJson(json['issue']);
    comment = new IssueComment.fromJson(json['comment']);
    pages = EventPayloadPages.listFromJson(json['pages']);
  }

  Map<String, dynamic> toJson() {
    return {
      'action': action,
      'issue': issue,
      'comment': comment,
      'pages': pages
     };
  }

  static List<EventPayload> listFromJson(List<dynamic> json) {
    return json == null ? new List<EventPayload>() : json.map((value) => new EventPayload.fromJson(value)).toList();
  }

  static Map<String, EventPayload> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EventPayload>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EventPayload.fromJson(value));
    }
    return map;
  }
}
