part of swagger.api;

class ReviewComment {
  
  String url = null;

  int pullRequestReviewId = null;

  int id = null;

  String nodeId = null;

  String diffHunk = null;

  String path = null;

  int position = null;

  int originalPosition = null;

  String commitId = null;

  String originalCommitId = null;

  int inReplyToId = null;

  AllOfreviewCommentUser user = null;

  String body = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String htmlUrl = null;

  String pullRequestUrl = null;

  String authorAssociation = null;

  ReviewcommentLinks links = null;

  String bodyText = null;

  String bodyHtml = null;
/* The side of the first line of the range for a multi-line comment. */
  String side = SideEnum.rIGHT_;
  //enum sideEnum {  LEFT,  RIGHT,  };
/* The side of the first line of the range for a multi-line comment. */
  String startSide = StartSideEnum.rIGHT_;
  //enum startSideEnum {  LEFT,  RIGHT,  };
/* The line of the blob to which the comment applies. The last line of the range for a multi-line comment */
  int line = null;
/* The original line of the blob to which the comment applies. The last line of the range for a multi-line comment */
  int originalLine = null;
/* The first line of the range for a multi-line comment. */
  int startLine = null;
/* The original first line of the range for a multi-line comment. */
  int originalStartLine = null;

  ReviewComment();

  @override
  String toString() {
    return 'ReviewComment[url=$url, pullRequestReviewId=$pullRequestReviewId, id=$id, nodeId=$nodeId, diffHunk=$diffHunk, path=$path, position=$position, originalPosition=$originalPosition, commitId=$commitId, originalCommitId=$originalCommitId, inReplyToId=$inReplyToId, user=$user, body=$body, createdAt=$createdAt, updatedAt=$updatedAt, htmlUrl=$htmlUrl, pullRequestUrl=$pullRequestUrl, authorAssociation=$authorAssociation, links=$links, bodyText=$bodyText, bodyHtml=$bodyHtml, side=$side, startSide=$startSide, line=$line, originalLine=$originalLine, startLine=$startLine, originalStartLine=$originalStartLine, ]';
  }

  ReviewComment.fromJson(Map<String, dynamic> json) {
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
    user = new AllOfreviewCommentUser.fromJson(json['user']);
    body = json['body'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    htmlUrl = json['html_url'];
    pullRequestUrl = json['pull_request_url'];
    authorAssociation = json['author_association'];
    links = new ReviewcommentLinks.fromJson(json['_links']);
    bodyText = json['body_text'];
    bodyHtml = json['body_html'];
    side = json['side'];
    startSide = json['start_side'];
    line = json['line'];
    originalLine = json['original_line'];
    startLine = json['start_line'];
    originalStartLine = json['original_start_line'];
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
      'body_text': bodyText,
      'body_html': bodyHtml,
      'side': side,
      'start_side': startSide,
      'line': line,
      'original_line': originalLine,
      'start_line': startLine,
      'original_start_line': originalStartLine
     };
  }

  static List<ReviewComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReviewComment>() : json.map((value) => new ReviewComment.fromJson(value)).toList();
  }

  static Map<String, ReviewComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReviewComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReviewComment.fromJson(value));
    }
    return map;
  }
}
