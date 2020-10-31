part of swagger.api;

class PullRequest {
  
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
/* Number uniquely identifying the pull request within its repository. */
  int number = null;
/* State of this Pull Request. Either `open` or `closed`. */
  String state = null;
  //enum stateEnum {  open,  closed,  };

  bool locked = null;
/* The title of the pull request. */
  String title = null;

  AllOfpullRequestUser user = null;

  String body = null;

  List<IssuesimpleLabels> labels = [];

  AllOfpullRequestMilestone milestone = null;

  String activeLockReason = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  DateTime closedAt = null;

  DateTime mergedAt = null;

  String mergeCommitSha = null;

  AllOfpullRequestAssignee assignee = null;

  List<SimpleUser> assignees = [];

  List<SimpleUser> requestedReviewers = [];

  List<TeamSimple> requestedTeams = [];

  PullrequestHead head = null;

  PullrequestBase base = null;

  PullrequestsimpleLinks links = null;

  String authorAssociation = null;
/* Indicates whether or not the pull request is a draft. */
  bool draft = null;

  bool merged = null;

  bool mergeable = null;

  bool rebaseable = null;

  String mergeableState = null;

  AllOfpullRequestMergedBy mergedBy = null;

  int comments = null;

  int reviewComments = null;
/* Indicates whether maintainers can modify the pull request. */
  bool maintainerCanModify = null;

  int commits = null;

  int additions = null;

  int deletions = null;

  int changedFiles = null;

  PullRequest();

  @override
  String toString() {
    return 'PullRequest[url=$url, id=$id, nodeId=$nodeId, htmlUrl=$htmlUrl, diffUrl=$diffUrl, patchUrl=$patchUrl, issueUrl=$issueUrl, commitsUrl=$commitsUrl, reviewCommentsUrl=$reviewCommentsUrl, reviewCommentUrl=$reviewCommentUrl, commentsUrl=$commentsUrl, statusesUrl=$statusesUrl, number=$number, state=$state, locked=$locked, title=$title, user=$user, body=$body, labels=$labels, milestone=$milestone, activeLockReason=$activeLockReason, createdAt=$createdAt, updatedAt=$updatedAt, closedAt=$closedAt, mergedAt=$mergedAt, mergeCommitSha=$mergeCommitSha, assignee=$assignee, assignees=$assignees, requestedReviewers=$requestedReviewers, requestedTeams=$requestedTeams, head=$head, base=$base, links=$links, authorAssociation=$authorAssociation, draft=$draft, merged=$merged, mergeable=$mergeable, rebaseable=$rebaseable, mergeableState=$mergeableState, mergedBy=$mergedBy, comments=$comments, reviewComments=$reviewComments, maintainerCanModify=$maintainerCanModify, commits=$commits, additions=$additions, deletions=$deletions, changedFiles=$changedFiles, ]';
  }

  PullRequest.fromJson(Map<String, dynamic> json) {
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
    user = new AllOfpullRequestUser.fromJson(json['user']);
    body = json['body'];
    labels = IssuesimpleLabels.listFromJson(json['labels']);
    milestone = new AllOfpullRequestMilestone.fromJson(json['milestone']);
    activeLockReason = json['active_lock_reason'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    closedAt = json['closed_at'] == null ? null : DateTime.parse(json['closed_at']);
    mergedAt = json['merged_at'] == null ? null : DateTime.parse(json['merged_at']);
    mergeCommitSha = json['merge_commit_sha'];
    assignee = new AllOfpullRequestAssignee.fromJson(json['assignee']);
    assignees = SimpleUser.listFromJson(json['assignees']);
    requestedReviewers = SimpleUser.listFromJson(json['requested_reviewers']);
    requestedTeams = TeamSimple.listFromJson(json['requested_teams']);
    head = new PullrequestHead.fromJson(json['head']);
    base = new PullrequestBase.fromJson(json['base']);
    links = new PullrequestsimpleLinks.fromJson(json['_links']);
    authorAssociation = json['author_association'];
    draft = json['draft'];
    merged = json['merged'];
    mergeable = json['mergeable'];
    rebaseable = json['rebaseable'];
    mergeableState = json['mergeable_state'];
    mergedBy = new AllOfpullRequestMergedBy.fromJson(json['merged_by']);
    comments = json['comments'];
    reviewComments = json['review_comments'];
    maintainerCanModify = json['maintainer_can_modify'];
    commits = json['commits'];
    additions = json['additions'];
    deletions = json['deletions'];
    changedFiles = json['changed_files'];
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
      'draft': draft,
      'merged': merged,
      'mergeable': mergeable,
      'rebaseable': rebaseable,
      'mergeable_state': mergeableState,
      'merged_by': mergedBy,
      'comments': comments,
      'review_comments': reviewComments,
      'maintainer_can_modify': maintainerCanModify,
      'commits': commits,
      'additions': additions,
      'deletions': deletions,
      'changed_files': changedFiles
     };
  }

  static List<PullRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullRequest>() : json.map((value) => new PullRequest.fromJson(value)).toList();
  }

  static Map<String, PullRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullRequest.fromJson(value));
    }
    return map;
  }
}
