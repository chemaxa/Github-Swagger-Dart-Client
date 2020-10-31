part of swagger.api;

class AllOfissueSimpleMilestone {
  
  String url = null;

  String htmlUrl = null;

  String labelsUrl = null;

  int id = null;

  String nodeId = null;
/* The number of the milestone. */
  int number = null;
/* The state of the milestone. */
  String state = StateEnum.open_;
  //enum stateEnum {  open,  closed,  };
/* The title of the milestone. */
  String title = null;

  String description = null;

  Object creator = null;

  int openIssues = null;

  int closedIssues = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  DateTime closedAt = null;

  DateTime dueOn = null;

  AllOfissueSimpleMilestone();

  @override
  String toString() {
    return 'AllOfissueSimpleMilestone[url=$url, htmlUrl=$htmlUrl, labelsUrl=$labelsUrl, id=$id, nodeId=$nodeId, number=$number, state=$state, title=$title, description=$description, creator=$creator, openIssues=$openIssues, closedIssues=$closedIssues, createdAt=$createdAt, updatedAt=$updatedAt, closedAt=$closedAt, dueOn=$dueOn, ]';
  }

  AllOfissueSimpleMilestone.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    htmlUrl = json['html_url'];
    labelsUrl = json['labels_url'];
    id = json['id'];
    nodeId = json['node_id'];
    number = json['number'];
    state = json['state'];
    title = json['title'];
    description = json['description'];
    creator = new Object.fromJson(json['creator']);
    openIssues = json['open_issues'];
    closedIssues = json['closed_issues'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    closedAt = json['closed_at'] == null ? null : DateTime.parse(json['closed_at']);
    dueOn = json['due_on'] == null ? null : DateTime.parse(json['due_on']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'html_url': htmlUrl,
      'labels_url': labelsUrl,
      'id': id,
      'node_id': nodeId,
      'number': number,
      'state': state,
      'title': title,
      'description': description,
      'creator': creator,
      'open_issues': openIssues,
      'closed_issues': closedIssues,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'closed_at': closedAt == null ? '' : closedAt.toUtc().toIso8601String(),
      'due_on': dueOn == null ? '' : dueOn.toUtc().toIso8601String()
     };
  }

  static List<AllOfissueSimpleMilestone> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfissueSimpleMilestone>() : json.map((value) => new AllOfissueSimpleMilestone.fromJson(value)).toList();
  }

  static Map<String, AllOfissueSimpleMilestone> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfissueSimpleMilestone>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfissueSimpleMilestone.fromJson(value));
    }
    return map;
  }
}
