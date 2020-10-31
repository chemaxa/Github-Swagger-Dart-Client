part of swagger.api;

class TeamDiscussionComment {
  
  AllOfteamDiscussionCommentAuthor author = null;
/* The main text of the comment. */
  String body = null;

  String bodyHtml = null;
/* The current version of the body content. If provided, this update operation will be rejected if the given version does not match the latest version on the server. */
  String bodyVersion = null;

  DateTime createdAt = null;

  DateTime lastEditedAt = null;

  String discussionUrl = null;

  String htmlUrl = null;

  String nodeId = null;
/* The unique sequence number of a team discussion comment. */
  int number = null;

  DateTime updatedAt = null;

  String url = null;

  ReactionRollup reactions = null;

  TeamDiscussionComment();

  @override
  String toString() {
    return 'TeamDiscussionComment[author=$author, body=$body, bodyHtml=$bodyHtml, bodyVersion=$bodyVersion, createdAt=$createdAt, lastEditedAt=$lastEditedAt, discussionUrl=$discussionUrl, htmlUrl=$htmlUrl, nodeId=$nodeId, number=$number, updatedAt=$updatedAt, url=$url, reactions=$reactions, ]';
  }

  TeamDiscussionComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = new AllOfteamDiscussionCommentAuthor.fromJson(json['author']);
    body = json['body'];
    bodyHtml = json['body_html'];
    bodyVersion = json['body_version'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    lastEditedAt = json['last_edited_at'] == null ? null : DateTime.parse(json['last_edited_at']);
    discussionUrl = json['discussion_url'];
    htmlUrl = json['html_url'];
    nodeId = json['node_id'];
    number = json['number'];
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    url = json['url'];
    reactions = new ReactionRollup.fromJson(json['reactions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'author': author,
      'body': body,
      'body_html': bodyHtml,
      'body_version': bodyVersion,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'last_edited_at': lastEditedAt == null ? '' : lastEditedAt.toUtc().toIso8601String(),
      'discussion_url': discussionUrl,
      'html_url': htmlUrl,
      'node_id': nodeId,
      'number': number,
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'url': url,
      'reactions': reactions
     };
  }

  static List<TeamDiscussionComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<TeamDiscussionComment>() : json.map((value) => new TeamDiscussionComment.fromJson(value)).toList();
  }

  static Map<String, TeamDiscussionComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TeamDiscussionComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TeamDiscussionComment.fromJson(value));
    }
    return map;
  }
}
