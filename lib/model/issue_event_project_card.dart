part of swagger.api;

class IssueEventProjectCard {
  
  String url = null;

  int id = null;

  String projectUrl = null;

  int projectId = null;

  String columnName = null;

  String previousColumnName = null;

  IssueEventProjectCard();

  @override
  String toString() {
    return 'IssueEventProjectCard[url=$url, id=$id, projectUrl=$projectUrl, projectId=$projectId, columnName=$columnName, previousColumnName=$previousColumnName, ]';
  }

  IssueEventProjectCard.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    id = json['id'];
    projectUrl = json['project_url'];
    projectId = json['project_id'];
    columnName = json['column_name'];
    previousColumnName = json['previous_column_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'id': id,
      'project_url': projectUrl,
      'project_id': projectId,
      'column_name': columnName,
      'previous_column_name': previousColumnName
     };
  }

  static List<IssueEventProjectCard> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueEventProjectCard>() : json.map((value) => new IssueEventProjectCard.fromJson(value)).toList();
  }

  static Map<String, IssueEventProjectCard> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueEventProjectCard>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueEventProjectCard.fromJson(value));
    }
    return map;
  }
}
