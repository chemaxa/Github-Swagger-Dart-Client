part of swagger.api;

class IssueSimple {
  
  int id = null;

  String nodeId = null;

  String url = null;

  String repositoryUrl = null;

  String labelsUrl = null;

  String commentsUrl = null;

  String eventsUrl = null;

  String htmlUrl = null;

  int number = null;

  String state = null;

  String title = null;

  String body = null;

  AllOfissueSimpleUser user = null;

  List<IssuesimpleLabels> labels = [];

  AllOfissueSimpleAssignee assignee = null;

  List<SimpleUser> assignees = [];

  AllOfissueSimpleMilestone milestone = null;

  bool locked = null;

  String activeLockReason = null;

  int comments = null;

  IssuesimplePullRequest pullRequest = null;

  DateTime closedAt = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String authorAssociation = null;

  String bodyHtml = null;

  String bodyText = null;

  String timelineUrl = null;

  Repository repository = null;

  AllOfissueSimplePerformedViaGithubApp performedViaGithubApp = null;

  IssueSimple();

  @override
  String toString() {
    return 'IssueSimple[id=$id, nodeId=$nodeId, url=$url, repositoryUrl=$repositoryUrl, labelsUrl=$labelsUrl, commentsUrl=$commentsUrl, eventsUrl=$eventsUrl, htmlUrl=$htmlUrl, number=$number, state=$state, title=$title, body=$body, user=$user, labels=$labels, assignee=$assignee, assignees=$assignees, milestone=$milestone, locked=$locked, activeLockReason=$activeLockReason, comments=$comments, pullRequest=$pullRequest, closedAt=$closedAt, createdAt=$createdAt, updatedAt=$updatedAt, authorAssociation=$authorAssociation, bodyHtml=$bodyHtml, bodyText=$bodyText, timelineUrl=$timelineUrl, repository=$repository, performedViaGithubApp=$performedViaGithubApp, ]';
  }

  IssueSimple.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    repositoryUrl = json['repository_url'];
    labelsUrl = json['labels_url'];
    commentsUrl = json['comments_url'];
    eventsUrl = json['events_url'];
    htmlUrl = json['html_url'];
    number = json['number'];
    state = json['state'];
    title = json['title'];
    body = json['body'];
    user = new AllOfissueSimpleUser.fromJson(json['user']);
    labels = IssuesimpleLabels.listFromJson(json['labels']);
    assignee = new AllOfissueSimpleAssignee.fromJson(json['assignee']);
    assignees = SimpleUser.listFromJson(json['assignees']);
    milestone = new AllOfissueSimpleMilestone.fromJson(json['milestone']);
    locked = json['locked'];
    activeLockReason = json['active_lock_reason'];
    comments = json['comments'];
    pullRequest = new IssuesimplePullRequest.fromJson(json['pull_request']);
    closedAt = json['closed_at'] == null ? null : DateTime.parse(json['closed_at']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    authorAssociation = json['author_association'];
    bodyHtml = json['body_html'];
    bodyText = json['body_text'];
    timelineUrl = json['timeline_url'];
    repository = new Repository.fromJson(json['repository']);
    performedViaGithubApp = new AllOfissueSimplePerformedViaGithubApp.fromJson(json['performed_via_github_app']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'repository_url': repositoryUrl,
      'labels_url': labelsUrl,
      'comments_url': commentsUrl,
      'events_url': eventsUrl,
      'html_url': htmlUrl,
      'number': number,
      'state': state,
      'title': title,
      'body': body,
      'user': user,
      'labels': labels,
      'assignee': assignee,
      'assignees': assignees,
      'milestone': milestone,
      'locked': locked,
      'active_lock_reason': activeLockReason,
      'comments': comments,
      'pull_request': pullRequest,
      'closed_at': closedAt == null ? '' : closedAt.toUtc().toIso8601String(),
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'author_association': authorAssociation,
      'body_html': bodyHtml,
      'body_text': bodyText,
      'timeline_url': timelineUrl,
      'repository': repository,
      'performed_via_github_app': performedViaGithubApp
     };
  }

  static List<IssueSimple> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueSimple>() : json.map((value) => new IssueSimple.fromJson(value)).toList();
  }

  static Map<String, IssueSimple> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueSimple>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueSimple.fromJson(value));
    }
    return map;
  }
}
