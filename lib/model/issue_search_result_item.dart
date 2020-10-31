part of swagger.api;

class IssueSearchResultItem {
  
  String url = null;

  String repositoryUrl = null;

  String labelsUrl = null;

  String commentsUrl = null;

  String eventsUrl = null;

  String htmlUrl = null;

  int id = null;

  String nodeId = null;

  int number = null;

  String title = null;

  bool locked = null;

  String activeLockReason = null;

  List<SimpleUser> assignees = [];

  AllOfissueSearchResultItemUser user = null;

  List<IssuesearchresultitemLabels> labels = [];

  String state = null;

  AllOfissueSearchResultItemAssignee assignee = null;

  AllOfissueSearchResultItemMilestone milestone = null;

  int comments = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  DateTime closedAt = null;

  SearchResultTextMatches textMatches = null;

  IssuesimplePullRequest pullRequest = null;

  String body = null;

  int score = null;

  String authorAssociation = null;

  bool draft = null;

  Repository repository = null;

  String bodyHtml = null;

  String bodyText = null;

  String timelineUrl = null;

  AllOfissueSearchResultItemPerformedViaGithubApp performedViaGithubApp = null;

  IssueSearchResultItem();

  @override
  String toString() {
    return 'IssueSearchResultItem[url=$url, repositoryUrl=$repositoryUrl, labelsUrl=$labelsUrl, commentsUrl=$commentsUrl, eventsUrl=$eventsUrl, htmlUrl=$htmlUrl, id=$id, nodeId=$nodeId, number=$number, title=$title, locked=$locked, activeLockReason=$activeLockReason, assignees=$assignees, user=$user, labels=$labels, state=$state, assignee=$assignee, milestone=$milestone, comments=$comments, createdAt=$createdAt, updatedAt=$updatedAt, closedAt=$closedAt, textMatches=$textMatches, pullRequest=$pullRequest, body=$body, score=$score, authorAssociation=$authorAssociation, draft=$draft, repository=$repository, bodyHtml=$bodyHtml, bodyText=$bodyText, timelineUrl=$timelineUrl, performedViaGithubApp=$performedViaGithubApp, ]';
  }

  IssueSearchResultItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    repositoryUrl = json['repository_url'];
    labelsUrl = json['labels_url'];
    commentsUrl = json['comments_url'];
    eventsUrl = json['events_url'];
    htmlUrl = json['html_url'];
    id = json['id'];
    nodeId = json['node_id'];
    number = json['number'];
    title = json['title'];
    locked = json['locked'];
    activeLockReason = json['active_lock_reason'];
    assignees = SimpleUser.listFromJson(json['assignees']);
    user = new AllOfissueSearchResultItemUser.fromJson(json['user']);
    labels = IssuesearchresultitemLabels.listFromJson(json['labels']);
    state = json['state'];
    assignee = new AllOfissueSearchResultItemAssignee.fromJson(json['assignee']);
    milestone = new AllOfissueSearchResultItemMilestone.fromJson(json['milestone']);
    comments = json['comments'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    closedAt = json['closed_at'] == null ? null : DateTime.parse(json['closed_at']);
    textMatches = new SearchResultTextMatches.fromJson(json['text_matches']);
    pullRequest = new IssuesimplePullRequest.fromJson(json['pull_request']);
    body = json['body'];
    score = json['score'];
    authorAssociation = json['author_association'];
    draft = json['draft'];
    repository = new Repository.fromJson(json['repository']);
    bodyHtml = json['body_html'];
    bodyText = json['body_text'];
    timelineUrl = json['timeline_url'];
    performedViaGithubApp = new AllOfissueSearchResultItemPerformedViaGithubApp.fromJson(json['performed_via_github_app']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'repository_url': repositoryUrl,
      'labels_url': labelsUrl,
      'comments_url': commentsUrl,
      'events_url': eventsUrl,
      'html_url': htmlUrl,
      'id': id,
      'node_id': nodeId,
      'number': number,
      'title': title,
      'locked': locked,
      'active_lock_reason': activeLockReason,
      'assignees': assignees,
      'user': user,
      'labels': labels,
      'state': state,
      'assignee': assignee,
      'milestone': milestone,
      'comments': comments,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'closed_at': closedAt == null ? '' : closedAt.toUtc().toIso8601String(),
      'text_matches': textMatches,
      'pull_request': pullRequest,
      'body': body,
      'score': score,
      'author_association': authorAssociation,
      'draft': draft,
      'repository': repository,
      'body_html': bodyHtml,
      'body_text': bodyText,
      'timeline_url': timelineUrl,
      'performed_via_github_app': performedViaGithubApp
     };
  }

  static List<IssueSearchResultItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueSearchResultItem>() : json.map((value) => new IssueSearchResultItem.fromJson(value)).toList();
  }

  static Map<String, IssueSearchResultItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueSearchResultItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueSearchResultItem.fromJson(value));
    }
    return map;
  }
}
