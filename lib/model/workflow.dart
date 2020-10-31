part of swagger.api;

class Workflow {
  
  int id = null;

  String nodeId = null;

  String name = null;

  String path = null;

  String state = null;
  //enum stateEnum {  active,  deleted,  };

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String url = null;

  String htmlUrl = null;

  String badgeUrl = null;

  DateTime deletedAt = null;

  Workflow();

  @override
  String toString() {
    return 'Workflow[id=$id, nodeId=$nodeId, name=$name, path=$path, state=$state, createdAt=$createdAt, updatedAt=$updatedAt, url=$url, htmlUrl=$htmlUrl, badgeUrl=$badgeUrl, deletedAt=$deletedAt, ]';
  }

  Workflow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    path = json['path'];
    state = json['state'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    url = json['url'];
    htmlUrl = json['html_url'];
    badgeUrl = json['badge_url'];
    deletedAt = json['deleted_at'] == null ? null : DateTime.parse(json['deleted_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'path': path,
      'state': state,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'url': url,
      'html_url': htmlUrl,
      'badge_url': badgeUrl,
      'deleted_at': deletedAt == null ? '' : deletedAt.toUtc().toIso8601String()
     };
  }

  static List<Workflow> listFromJson(List<dynamic> json) {
    return json == null ? new List<Workflow>() : json.map((value) => new Workflow.fromJson(value)).toList();
  }

  static Map<String, Workflow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Workflow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Workflow.fromJson(value));
    }
    return map;
  }
}
