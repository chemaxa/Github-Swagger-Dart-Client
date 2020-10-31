part of swagger.api;

class PullRequestReviewComment {
  /* URL for the pull request review comment */
  String url = null;
/* The ID of the pull request review to which the comment belongs. */
  int pullRequestReviewId = null;
/* The ID of the pull request review comment. */
  int id = null;
/* The node ID of the pull request review comment. */
  String nodeId = null;
/* The diff of the line that the comment refers to. */
  String diffHunk = null;
/* The relative path of the file to which the comment applies. */
  String path = null;
/* The line index in the diff to which the comment applies. */
  int position = null;
/* The index of the original line in the diff to which the comment applies. */
  int originalPosition = null;
/* The SHA of the commit to which the comment applies. */
  String commitId = null;
/* The SHA of the original commit to which the comment applies. */
  String originalCommitId = null;
/* The comment ID to reply to. */
  int inReplyToId = null;

  SimpleUser user = null;
/* The text of the comment. */
  String body = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;
/* HTML URL for the pull request review comment. */
  String htmlUrl = null;
/* URL for the pull request that the review comment belongs to. */
  String pullRequestUrl = null;
/* How the author of the comment is associated with the pull request. */
  String authorAssociation = null;

  PullrequestreviewcommentLinks links = null;
/* The first line of the range for a multi-line comment. */
  int startLine = null;
/* The first line of the range for a multi-line comment. */
  int originalStartLine = null;
/* The side of the first line of the range for a multi-line comment. */
  String startSide = StartSideEnum.rIGHT_;
  //enum startSideEnum {  LEFT,  RIGHT,  };
/* The line of the blob to which the comment applies. The last line of the range for a multi-line comment */
  int line = null;
/* The line of the blob to which the comment applies. The last line of the range for a multi-line comment */
  int originalLine = null;
/* The side of the diff to which the comment applies. The side of the last line of the range for a multi-line comment */
  String side = SideEnum.rIGHT_;
  //enum sideEnum {  LEFT,  RIGHT,  };

  ReactionRollup reactions = null;

  String bodyHtml = null;

  String bodyText = null;

  PullRequestReviewComment();

  @override
  String toString() {
    return 'PullRequestReviewComment[url=$url, pullRequestReviewId=$pullRequestReviewId, id=$id, nodeId=$nodeId, diffHunk=$diffHunk, path=$path, position=$position, originalPosition=$originalPosition, commitId=$commitId, originalCommitId=$originalCommitId, inReplyToId=$inReplyToId, user=$user, body=$body, createdAt=$createdAt, updatedAt=$updatedAt, htmlUrl=$htmlUrl, pullRequestUrl=$pullRequestUrl, authorAssociation=$authorAssociation, links=$links, startLine=$startLine, originalStartLine=$originalStartLine, startSide=$startSide, line=$line, originalLine=$originalLine, side=$side, reactions=$reactions, bodyHtml=$bodyHtml, bodyText=$bodyText, ]';
  }

  PullRequestReviewComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    pullRequestReviewId = json['pull_request_review_id'];
    id = json['id'];
    nodeId = json['node_id'];
    diffHunk = json['diff_hunk'];
    path = json['path'];
    position = json['position'];
    originalPosition = json['original_position'];
    commitId = json['commit_id'];
    originalCommitId = json['original_commit_id'];
    inReplyToId = json['in_reply_to_id'];
    user = new SimpleUser.fromJson(json['user']);
    body = json['body'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    htmlUrl = json['html_url'];
    pullRequestUrl = json['pull_request_url'];
    authorAssociation = json['author_association'];
    links = new PullrequestreviewcommentLinks.fromJson(json['_links']);
    startLine = json['start_line'];
    originalStartLine = json['original_start_line'];
    startSide = json['start_side'];
    line = json['line'];
    originalLine = json['original_line'];
    side = json['side'];
    reactions = new ReactionRollup.fromJson(json['reactions']);
    bodyHtml = json['body_html'];
    bodyText = json['body_text'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'pull_request_review_id': pullRequestReviewId,
      'id': id,
      'node_id': nodeId,
      'diff_hunk': diffHunk,
      'path': path,
      'position': position,
      'original_position': originalPosition,
      'commit_id': commitId,
      'original_commit_id': originalCommitId,
      'in_reply_to_id': inReplyToId,
      'user': user,
      'body': body,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'html_url': htmlUrl,
      'pull_request_url': pullRequestUrl,
      'author_association': authorAssociation,
      '_links': links,
      'start_line': startLine,
      'original_start_line': originalStartLine,
      'start_side': startSide,
      'line': line,
      'original_line': originalLine,
      'side': side,
      'reactions': reactions,
      'body_html': bodyHtml,
      'body_text': bodyText
     };
  }

  static List<PullRequestReviewComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullRequestReviewComment>() : json.map((value) => new PullRequestReviewComment.fromJson(value)).toList();
  }

  static Map<String, PullRequestReviewComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullRequestReviewComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullRequestReviewComment.fromJson(value));
    }
    return map;
  }
}
