part of swagger.api;

class PullRequestReview {
  /* Unique identifier of the review */
  int id = null;

  String nodeId = null;

  AllOfpullRequestReviewUser user = null;
/* The text of the review. */
  String body = null;

  String state = null;

  String htmlUrl = null;

  String pullRequestUrl = null;

  PullrequestreviewLinks links = null;

  DateTime submittedAt = null;
/* A commit SHA for the review. */
  String commitId = null;

  String bodyHtml = null;

  String bodyText = null;

  String authorAssociation = null;

  PullRequestReview();

  @override
  String toString() {
    return 'PullRequestReview[id=$id, nodeId=$nodeId, user=$user, body=$body, state=$state, htmlUrl=$htmlUrl, pullRequestUrl=$pullRequestUrl, links=$links, submittedAt=$submittedAt, commitId=$commitId, bodyHtml=$bodyHtml, bodyText=$bodyText, authorAssociation=$authorAssociation, ]';
  }

  PullRequestReview.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    user = new AllOfpullRequestReviewUser.fromJson(json['user']);
    body = json['body'];
    state = json['state'];
    htmlUrl = json['html_url'];
    pullRequestUrl = json['pull_request_url'];
    links = new PullrequestreviewLinks.fromJson(json['_links']);
    submittedAt = json['submitted_at'] == null ? null : DateTime.parse(json['submitted_at']);
    commitId = json['commit_id'];
    bodyHtml = json['body_html'];
    bodyText = json['body_text'];
    authorAssociation = json['author_association'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'user': user,
      'body': body,
      'state': state,
      'html_url': htmlUrl,
      'pull_request_url': pullRequestUrl,
      '_links': links,
      'submitted_at': submittedAt == null ? '' : submittedAt.toUtc().toIso8601String(),
      'commit_id': commitId,
      'body_html': bodyHtml,
      'body_text': bodyText,
      'author_association': authorAssociation
     };
  }

  static List<PullRequestReview> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullRequestReview>() : json.map((value) => new PullRequestReview.fromJson(value)).toList();
  }

  static Map<String, PullRequestReview> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullRequestReview>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullRequestReview.fromJson(value));
    }
    return map;
  }
}
