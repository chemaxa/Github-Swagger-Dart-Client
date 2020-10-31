part of swagger.api;

class Event {
  
  String id = null;

  String type = null;

  Actor actor = null;

  EventRepo repo = null;

  Actor org = null;

  EventPayload payload = null;

  bool public = null;

  DateTime createdAt = null;

  Event();

  @override
  String toString() {
    return 'Event[id=$id, type=$type, actor=$actor, repo=$repo, org=$org, payload=$payload, public=$public, createdAt=$createdAt, ]';
  }

  Event.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    type = json['type'];
    actor = new Actor.fromJson(json['actor']);
    repo = new EventRepo.fromJson(json['repo']);
    org = new Actor.fromJson(json['org']);
    payload = new EventPayload.fromJson(json['payload']);
    public = json['public'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'actor': actor,
      'repo': repo,
      'org': org,
      'payload': payload,
      'public': public,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String()
     };
  }

  static List<Event> listFromJson(List<dynamic> json) {
    return json == null ? new List<Event>() : json.map((value) => new Event.fromJson(value)).toList();
  }

  static Map<String, Event> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Event>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Event.fromJson(value));
    }
    return map;
  }
}
