part of swagger.api;

class Status {
  
  String url = null;

  String avatarUrl = null;

  int id = null;

  String nodeId = null;

  String state = null;

  String description = null;

  String targetUrl = null;

  String context = null;

  String createdAt = null;

  String updatedAt = null;

  SimpleUser creator = null;

  Status();

  @override
  String toString() {
    return 'Status[url=$url, avatarUrl=$avatarUrl, id=$id, nodeId=$nodeId, state=$state, description=$description, targetUrl=$targetUrl, context=$context, createdAt=$createdAt, updatedAt=$updatedAt, creator=$creator, ]';
  }

  Status.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    avatarUrl = json['avatar_url'];
    id = json['id'];
    nodeId = json['node_id'];
    state = json['state'];
    description = json['description'];
    targetUrl = json['target_url'];
    context = json['context'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    creator = new SimpleUser.fromJson(json['creator']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'avatar_url': avatarUrl,
      'id': id,
      'node_id': nodeId,
      'state': state,
      'description': description,
      'target_url': targetUrl,
      'context': context,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'creator': creator
     };
  }

  static List<Status> listFromJson(List<dynamic> json) {
    return json == null ? new List<Status>() : json.map((value) => new Status.fromJson(value)).toList();
  }

  static Map<String, Status> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Status>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Status.fromJson(value));
    }
    return map;
  }
}
