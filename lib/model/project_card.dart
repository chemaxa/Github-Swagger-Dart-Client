part of swagger.api;

class ProjectCard {
  
  String url = null;
/* The project card's ID */
  int id = null;

  String nodeId = null;

  String note = null;

  AllOfprojectCardCreator creator = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;
/* Whether or not the card is archived */
  bool archived = null;

  String columnUrl = null;

  String contentUrl = null;

  String projectUrl = null;

  ProjectCard();

  @override
  String toString() {
    return 'ProjectCard[url=$url, id=$id, nodeId=$nodeId, note=$note, creator=$creator, createdAt=$createdAt, updatedAt=$updatedAt, archived=$archived, columnUrl=$columnUrl, contentUrl=$contentUrl, projectUrl=$projectUrl, ]';
  }

  ProjectCard.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    id = json['id'];
    nodeId = json['node_id'];
    note = json['note'];
    creator = new AllOfprojectCardCreator.fromJson(json['creator']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    archived = json['archived'];
    columnUrl = json['column_url'];
    contentUrl = json['content_url'];
    projectUrl = json['project_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'id': id,
      'node_id': nodeId,
      'note': note,
      'creator': creator,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'archived': archived,
      'column_url': columnUrl,
      'content_url': contentUrl,
      'project_url': projectUrl
     };
  }

  static List<ProjectCard> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProjectCard>() : json.map((value) => new ProjectCard.fromJson(value)).toList();
  }

  static Map<String, ProjectCard> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProjectCard>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProjectCard.fromJson(value));
    }
    return map;
  }
}
