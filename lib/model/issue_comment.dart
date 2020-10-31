part of swagger.api;

class IssueComment {
  /* Unique identifier of the issue comment */
  int id = null;

  String nodeId = null;
/* URL for the issue comment */
  String url = null;
/* Contents of the issue comment */
  String body = null;

  String bodyText = null;

  String bodyHtml = null;

  String htmlUrl = null;

  AllOfissueCommentUser user = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String issueUrl = null;

  String authorAssociation = null;

  AllOfissueCommentPerformedViaGithubApp performedViaGithubApp = null;

  ReactionRollup reactions = null;

  IssueComment();

  @override
  String toString() {
    return 'IssueComment[id=$id, nodeId=$nodeId, url=$url, body=$body, bodyText=$bodyText, bodyHtml=$bodyHtml, htmlUrl=$htmlUrl, user=$user, createdAt=$createdAt, updatedAt=$updatedAt, issueUrl=$issueUrl, authorAssociation=$authorAssociation, performedViaGithubApp=$performedViaGithubApp, reactions=$reactions, ]';
  }

  IssueComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    body = json['body'];
    bodyText = json['body_text'];
    bodyHtml = json['body_html'];
    htmlUrl = json['html_url'];
    user = new AllOfissueCommentUser.fromJson(json['user']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    issueUrl = json['issue_url'];
    authorAssociation = json['author_association'];
    performedViaGithubApp = new AllOfissueCommentPerformedViaGithubApp.fromJson(json['performed_via_github_app']);
    reactions = new ReactionRollup.fromJson(json['reactions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'body': body,
      'body_text': bodyText,
      'body_html': bodyHtml,
      'html_url': htmlUrl,
      'user': user,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'issue_url': issueUrl,
      'author_association': authorAssociation,
      'performed_via_github_app': performedViaGithubApp,
      'reactions': reactions
     };
  }

  static List<IssueComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueComment>() : json.map((value) => new IssueComment.fromJson(value)).toList();
  }

  static Map<String, IssueComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueComment.fromJson(value));
    }
    return map;
  }
}
