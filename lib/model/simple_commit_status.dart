part of swagger.api;

class SimpleCommitStatus {
  
  String description = null;

  int id = null;

  String nodeId = null;

  String state = null;

  String context = null;

  String targetUrl = null;

  bool required = null;

  String avatarUrl = null;

  String url = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  SimpleCommitStatus();

  @override
  String toString() {
    return 'SimpleCommitStatus[description=$description, id=$id, nodeId=$nodeId, state=$state, context=$context, targetUrl=$targetUrl, required=$required, avatarUrl=$avatarUrl, url=$url, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  SimpleCommitStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    id = json['id'];
    nodeId = json['node_id'];
    state = json['state'];
    context = json['context'];
    targetUrl = json['target_url'];
    required = json['required'];
    avatarUrl = json['avatar_url'];
    url = json['url'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'id': id,
      'node_id': nodeId,
      'state': state,
      'context': context,
      'target_url': targetUrl,
      'required': required,
      'avatar_url': avatarUrl,
      'url': url,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String()
     };
  }

  static List<SimpleCommitStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<SimpleCommitStatus>() : json.map((value) => new SimpleCommitStatus.fromJson(value)).toList();
  }

  static Map<String, SimpleCommitStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SimpleCommitStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SimpleCommitStatus.fromJson(value));
    }
    return map;
  }
}
