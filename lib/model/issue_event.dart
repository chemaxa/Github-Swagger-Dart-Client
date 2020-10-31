part of swagger.api;

class IssueEvent {
  
  int id = null;

  String nodeId = null;

  String url = null;

  AllOfissueEventActor actor = null;

  String event = null;

  String commitId = null;

  String commitUrl = null;

  DateTime createdAt = null;

  IssueSimple issue = null;

  IssueEventLabel label = null;

  AllOfissueEventAssignee assignee = null;

  AllOfissueEventAssigner assigner = null;

  AllOfissueEventReviewRequester reviewRequester = null;

  AllOfissueEventRequestedReviewer requestedReviewer = null;

  Team requestedTeam = null;

  IssueEventDismissedReview dismissedReview = null;

  IssueEventMilestone milestone = null;

  IssueEventProjectCard projectCard = null;

  IssueEventRename rename = null;

  String authorAssociation = null;

  String lockReason = null;

  IssueEvent();

  @override
  String toString() {
    return 'IssueEvent[id=$id, nodeId=$nodeId, url=$url, actor=$actor, event=$event, commitId=$commitId, commitUrl=$commitUrl, createdAt=$createdAt, issue=$issue, label=$label, assignee=$assignee, assigner=$assigner, reviewRequester=$reviewRequester, requestedReviewer=$requestedReviewer, requestedTeam=$requestedTeam, dismissedReview=$dismissedReview, milestone=$milestone, projectCard=$projectCard, rename=$rename, authorAssociation=$authorAssociation, lockReason=$lockReason, ]';
  }

  IssueEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    actor = new AllOfissueEventActor.fromJson(json['actor']);
    event = json['event'];
    commitId = json['commit_id'];
    commitUrl = json['commit_url'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    issue = new IssueSimple.fromJson(json['issue']);
    label = new IssueEventLabel.fromJson(json['label']);
    assignee = new AllOfissueEventAssignee.fromJson(json['assignee']);
    assigner = new AllOfissueEventAssigner.fromJson(json['assigner']);
    reviewRequester = new AllOfissueEventReviewRequester.fromJson(json['review_requester']);
    requestedReviewer = new AllOfissueEventRequestedReviewer.fromJson(json['requested_reviewer']);
    requestedTeam = new Team.fromJson(json['requested_team']);
    dismissedReview = new IssueEventDismissedReview.fromJson(json['dismissed_review']);
    milestone = new IssueEventMilestone.fromJson(json['milestone']);
    projectCard = new IssueEventProjectCard.fromJson(json['project_card']);
    rename = new IssueEventRename.fromJson(json['rename']);
    authorAssociation = json['author_association'];
    lockReason = json['lock_reason'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'actor': actor,
      'event': event,
      'commit_id': commitId,
      'commit_url': commitUrl,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'issue': issue,
      'label': label,
      'assignee': assignee,
      'assigner': assigner,
      'review_requester': reviewRequester,
      'requested_reviewer': requestedReviewer,
      'requested_team': requestedTeam,
      'dismissed_review': dismissedReview,
      'milestone': milestone,
      'project_card': projectCard,
      'rename': rename,
      'author_association': authorAssociation,
      'lock_reason': lockReason
     };
  }

  static List<IssueEvent> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueEvent>() : json.map((value) => new IssueEvent.fromJson(value)).toList();
  }

  static Map<String, IssueEvent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueEvent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueEvent.fromJson(value));
    }
    return map;
  }
}
