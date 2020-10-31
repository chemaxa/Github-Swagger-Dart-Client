part of swagger.api;

class ProjectColumn {
  
  String url = null;

  String projectUrl = null;

  String cardsUrl = null;
/* The unique identifier of the project column */
  int id = null;

  String nodeId = null;
/* Name of the project column */
  String name = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  ProjectColumn();

  @override
  String toString() {
    return 'ProjectColumn[url=$url, projectUrl=$projectUrl, cardsUrl=$cardsUrl, id=$id, nodeId=$nodeId, name=$name, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  ProjectColumn.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    projectUrl = json['project_url'];
    cardsUrl = json['cards_url'];
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'project_url': projectUrl,
      'cards_url': cardsUrl,
      'id': id,
      'node_id': nodeId,
      'name': name,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String()
     };
  }

  static List<ProjectColumn> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProjectColumn>() : json.map((value) => new ProjectColumn.fromJson(value)).toList();
  }

  static Map<String, ProjectColumn> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProjectColumn>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProjectColumn.fromJson(value));
    }
    return map;
  }
}
