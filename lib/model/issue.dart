part of swagger.api;

class Issue {
  
  int id = null;

  String nodeId = null;
/* URL for the issue */
  String url = null;

  String repositoryUrl = null;

  String labelsUrl = null;

  String commentsUrl = null;

  String eventsUrl = null;

  String htmlUrl = null;
/* Number uniquely identifying the issue within its repository */
  int number = null;
/* State of the issue; either 'open' or 'closed' */
  String state = null;
/* Title of the issue */
  String title = null;
/* Contents of the issue */
  String body = null;

  AllOfissueUser user = null;
/* Labels to associate with this issue; pass one or more label names to replace the set of labels on this issue; send an empty array to clear all labels from the issue; note that the labels are silently dropped for users without push access to the repository */
  List<OneOfissueLabelsItems> labels = [];

  AllOfissueAssignee assignee = null;

  List<SimpleUser> assignees = [];

  AllOfissueMilestone milestone = null;

  bool locked = null;

  String activeLockReason = null;

  int comments = null;

  IssuesimplePullRequest pullRequest = null;

  DateTime closedAt = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  AllOfissueClosedBy closedBy = null;

  String bodyHtml = null;

  String bodyText = null;

  String timelineUrl = null;

  Repository repository = null;

  AllOfissuePerformedViaGithubApp performedViaGithubApp = null;

  String authorAssociation = null;

  ReactionRollup reactions = null;

  Issue();

  @override
  String toString() {
    return 'Issue[id=$id, nodeId=$nodeId, url=$url, repositoryUrl=$repositoryUrl, labelsUrl=$labelsUrl, commentsUrl=$commentsUrl, eventsUrl=$eventsUrl, htmlUrl=$htmlUrl, number=$number, state=$state, title=$title, body=$body, user=$user, labels=$labels, assignee=$assignee, assignees=$assignees, milestone=$milestone, locked=$locked, activeLockReason=$activeLockReason, comments=$comments, pullRequest=$pullRequest, closedAt=$closedAt, createdAt=$createdAt, updatedAt=$updatedAt, closedBy=$closedBy, bodyHtml=$bodyHtml, bodyText=$bodyText, timelineUrl=$timelineUrl, repository=$repository, performedViaGithubApp=$performedViaGithubApp, authorAssociation=$authorAssociation, reactions=$reactions, ]';
  }

  Issue.fromJson(Map<String, dynamic> json) {
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
    user = new AllOfissueUser.fromJson(json['user']);
    labels = Object.listFromJson(json['labels']);
    assignee = new AllOfissueAssignee.fromJson(json['assignee']);
    assignees = SimpleUser.listFromJson(json['assignees']);
    milestone = new AllOfissueMilestone.fromJson(json['milestone']);
    locked = json['locked'];
    activeLockReason = json['active_lock_reason'];
    comments = json['comments'];
    pullRequest = new IssuesimplePullRequest.fromJson(json['pull_request']);
    closedAt = json['closed_at'] == null ? null : DateTime.parse(json['closed_at']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    closedBy = new AllOfissueClosedBy.fromJson(json['closed_by']);
    bodyHtml = json['body_html'];
    bodyText = json['body_text'];
    timelineUrl = json['timeline_url'];
    repository = new Repository.fromJson(json['repository']);
    performedViaGithubApp = new AllOfissuePerformedViaGithubApp.fromJson(json['performed_via_github_app']);
    authorAssociation = json['author_association'];
    reactions = new ReactionRollup.fromJson(json['reactions']);
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
      'closed_by': closedBy,
      'body_html': bodyHtml,
      'body_text': bodyText,
      'timeline_url': timelineUrl,
      'repository': repository,
      'performed_via_github_app': performedViaGithubApp,
      'author_association': authorAssociation,
      'reactions': reactions
     };
  }

  static List<Issue> listFromJson(List<dynamic> json) {
    return json == null ? new List<Issue>() : json.map((value) => new Issue.fromJson(value)).toList();
  }

  static Map<String, Issue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Issue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Issue.fromJson(value));
    }
    return map;
  }
}
