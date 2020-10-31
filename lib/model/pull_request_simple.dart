part of swagger.api;

class PullRequestSimple {
  
  String url = null;

  int id = null;

  String nodeId = null;

  String htmlUrl = null;

  String diffUrl = null;

  String patchUrl = null;

  String issueUrl = null;

  String commitsUrl = null;

  String reviewCommentsUrl = null;

  String reviewCommentUrl = null;

  String commentsUrl = null;

  String statusesUrl = null;

  int number = null;

  String state = null;

  bool locked = null;

  String title = null;

  AllOfpullRequestSimpleUser user = null;

  String body = null;

  List<PullrequestsimpleLabels> labels = [];

  AllOfpullRequestSimpleMilestone milestone = null;

  String activeLockReason = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  DateTime closedAt = null;

  DateTime mergedAt = null;

  String mergeCommitSha = null;

  AllOfpullRequestSimpleAssignee assignee = null;

  List<SimpleUser> assignees = [];

  List<SimpleUser> requestedReviewers = [];

  List<TeamSimple> requestedTeams = [];

  PullrequestsimpleHead head = null;

  PullrequestsimpleHead base = null;

  PullrequestsimpleLinks links = null;

  String authorAssociation = null;
/* Indicates whether or not the pull request is a draft. */
  bool draft = null;

  PullRequestSimple();

  @override
  String toString() {
    return 'PullRequestSimple[url=$url, id=$id, nodeId=$nodeId, htmlUrl=$htmlUrl, diffUrl=$diffUrl, patchUrl=$patchUrl, issueUrl=$issueUrl, commitsUrl=$commitsUrl, reviewCommentsUrl=$reviewCommentsUrl, reviewCommentUrl=$reviewCommentUrl, commentsUrl=$commentsUrl, statusesUrl=$statusesUrl, number=$number, state=$state, locked=$locked, title=$title, user=$user, body=$body, labels=$labels, milestone=$milestone, activeLockReason=$activeLockReason, createdAt=$createdAt, updatedAt=$updatedAt, closedAt=$closedAt, mergedAt=$mergedAt, mergeCommitSha=$mergeCommitSha, assignee=$assignee, assignees=$assignees, requestedReviewers=$requestedReviewers, requestedTeams=$requestedTeams, head=$head, base=$base, links=$links, authorAssociation=$authorAssociation, draft=$draft, ]';
  }

  PullRequestSimple.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    id = json['id'];
    nodeId = json['node_id'];
    htmlUrl = json['html_url'];
    diffUrl = json['diff_url'];
    patchUrl = json['patch_url'];
    issueUrl = json['issue_url'];
    commitsUrl = json['commits_url'];
    reviewCommentsUrl = json['review_comments_url'];
    reviewCommentUrl = json['review_comment_url'];
    commentsUrl = json['comments_url'];
    statusesUrl = json['statuses_url'];
    number = json['number'];
    state = json['state'];
    locked = json['locked'];
    title = json['title'];
    user = new AllOfpullRequestSimpleUser.fromJson(json['user']);
    body = json['body'];
    labels = PullrequestsimpleLabels.listFromJson(json['labels']);
    milestone = new AllOfpullRequestSimpleMilestone.fromJson(json['milestone']);
    activeLockReason = json['active_lock_reason'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    closedAt = json['closed_at'] == null ? null : DateTime.parse(json['closed_at']);
    mergedAt = json['merged_at'] == null ? null : DateTime.parse(json['merged_at']);
    mergeCommitSha = json['merge_commit_sha'];
    assignee = new AllOfpullRequestSimpleAssignee.fromJson(json['assignee']);
    assignees = SimpleUser.listFromJson(json['assignees']);
    requestedReviewers = SimpleUser.listFromJson(json['requested_reviewers']);
    requestedTeams = TeamSimple.listFromJson(json['requested_teams']);
    head = new PullrequestsimpleHead.fromJson(json['head']);
    base = new PullrequestsimpleHead.fromJson(json['base']);
    links = new PullrequestsimpleLinks.fromJson(json['_links']);
    authorAssociation = json['author_association'];
    draft = json['draft'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'id': id,
      'node_id': nodeId,
      'html_url': htmlUrl,
      'diff_url': diffUrl,
      'patch_url': patchUrl,
      'issue_url': issueUrl,
      'commits_url': commitsUrl,
      'review_comments_url': reviewCommentsUrl,
      'review_comment_url': reviewCommentUrl,
      'comments_url': commentsUrl,
      'statuses_url': statusesUrl,
      'number': number,
      'state': state,
      'locked': locked,
      'title': title,
      'user': user,
      'body': body,
      'labels': labels,
      'milestone': milestone,
      'active_lock_reason': activeLockReason,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'closed_at': closedAt == null ? '' : closedAt.toUtc().toIso8601String(),
      'merged_at': mergedAt == null ? '' : mergedAt.toUtc().toIso8601String(),
      'merge_commit_sha': mergeCommitSha,
      'assignee': assignee,
      'assignees': assignees,
      'requested_reviewers': requestedReviewers,
      'requested_teams': requestedTeams,
      'head': head,
      'base': base,
      '_links': links,
      'author_association': authorAssociation,
      'draft': draft
     };
  }

  static List<PullRequestSimple> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullRequestSimple>() : json.map((value) => new PullRequestSimple.fromJson(value)).toList();
  }

  static Map<String, PullRequestSimple> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullRequestSimple>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullRequestSimple.fromJson(value));
    }
    return map;
  }
}
