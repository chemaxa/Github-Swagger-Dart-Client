part of swagger.api;

class EventPayloadPages {
  
  String pageName = null;

  String title = null;

  String summary = null;

  String action = null;

  String sha = null;

  String htmlUrl = null;

  EventPayloadPages();

  @override
  String toString() {
    return 'EventPayloadPages[pageName=$pageName, title=$title, summary=$summary, action=$action, sha=$sha, htmlUrl=$htmlUrl, ]';
  }

  EventPayloadPages.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageName = json['page_name'];
    title = json['title'];
    summary = json['summary'];
    action = json['action'];
    sha = json['sha'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'page_name': pageName,
      'title': title,
      'summary': summary,
      'action': action,
      'sha': sha,
      'html_url': htmlUrl
     };
  }

  static List<EventPayloadPages> listFromJson(List<dynamic> json) {
    return json == null ? new List<EventPayloadPages>() : json.map((value) => new EventPayloadPages.fromJson(value)).toList();
  }

  static Map<String, EventPayloadPages> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EventPayloadPages>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EventPayloadPages.fromJson(value));
    }
    return map;
  }
}
