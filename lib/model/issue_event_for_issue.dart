part of swagger.api;

class IssueEventForIssue {
  
  int id = null;

  String nodeId = null;

  String url = null;

  SimpleUser actor = null;

  String event = null;

  String commitId = null;

  String commitUrl = null;

  String createdAt = null;

  String sha = null;

  String htmlUrl = null;

  String message = null;

  String issueUrl = null;

  String updatedAt = null;

  String authorAssociation = null;

  String body = null;

  String lockReason = null;

  String submittedAt = null;

  String state = null;

  String pullRequestUrl = null;

  String bodyHtml = null;

  String bodyText = null;

  IssueEventForIssue();

  @override
  String toString() {
    return 'IssueEventForIssue[id=$id, nodeId=$nodeId, url=$url, actor=$actor, event=$event, commitId=$commitId, commitUrl=$commitUrl, createdAt=$createdAt, sha=$sha, htmlUrl=$htmlUrl, message=$message, issueUrl=$issueUrl, updatedAt=$updatedAt, authorAssociation=$authorAssociation, body=$body, lockReason=$lockReason, submittedAt=$submittedAt, state=$state, pullRequestUrl=$pullRequestUrl, bodyHtml=$bodyHtml, bodyText=$bodyText, ]';
  }

  IssueEventForIssue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    actor = new SimpleUser.fromJson(json['actor']);
    event = json['event'];
    commitId = json['commit_id'];
    commitUrl = json['commit_url'];
    createdAt = json['created_at'];
    sha = json['sha'];
    htmlUrl = json['html_url'];
    message = json['message'];
    issueUrl = json['issue_url'];
    updatedAt = json['updated_at'];
    authorAssociation = json['author_association'];
    body = json['body'];
    lockReason = json['lock_reason'];
    submittedAt = json['submitted_at'];
    state = json['state'];
    pullRequestUrl = json['pull_request_url'];
    bodyHtml = json['body_html'];
    bodyText = json['body_text'];
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
      'created_at': createdAt,
      'sha': sha,
      'html_url': htmlUrl,
      'message': message,
      'issue_url': issueUrl,
      'updated_at': updatedAt,
      'author_association': authorAssociation,
      'body': body,
      'lock_reason': lockReason,
      'submitted_at': submittedAt,
      'state': state,
      'pull_request_url': pullRequestUrl,
      'body_html': bodyHtml,
      'body_text': bodyText
     };
  }

  static List<IssueEventForIssue> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueEventForIssue>() : json.map((value) => new IssueEventForIssue.fromJson(value)).toList();
  }

  static Map<String, IssueEventForIssue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueEventForIssue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueEventForIssue.fromJson(value));
    }
    return map;
  }
}
