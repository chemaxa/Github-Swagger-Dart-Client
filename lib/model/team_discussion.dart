part of swagger.api;

class TeamDiscussion {
  
  AllOfteamDiscussionAuthor author = null;
/* The main text of the discussion. */
  String body = null;

  String bodyHtml = null;
/* The current version of the body content. If provided, this update operation will be rejected if the given version does not match the latest version on the server. */
  String bodyVersion = null;

  int commentsCount = null;

  String commentsUrl = null;

  DateTime createdAt = null;

  DateTime lastEditedAt = null;

  String htmlUrl = null;

  String nodeId = null;
/* The unique sequence number of a team discussion. */
  int number = null;
/* Whether or not this discussion should be pinned for easy retrieval. */
  bool pinned = null;
/* Whether or not this discussion should be restricted to team members and organization administrators. */
  bool private = null;

  String teamUrl = null;
/* The title of the discussion. */
  String title = null;

  DateTime updatedAt = null;

  String url = null;

  ReactionRollup reactions = null;

  TeamDiscussion();

  @override
  String toString() {
    return 'TeamDiscussion[author=$author, body=$body, bodyHtml=$bodyHtml, bodyVersion=$bodyVersion, commentsCount=$commentsCount, commentsUrl=$commentsUrl, createdAt=$createdAt, lastEditedAt=$lastEditedAt, htmlUrl=$htmlUrl, nodeId=$nodeId, number=$number, pinned=$pinned, private=$private, teamUrl=$teamUrl, title=$title, updatedAt=$updatedAt, url=$url, reactions=$reactions, ]';
  }

  TeamDiscussion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = new AllOfteamDiscussionAuthor.fromJson(json['author']);
    body = json['body'];
    bodyHtml = json['body_html'];
    bodyVersion = json['body_version'];
    commentsCount = json['comments_count'];
    commentsUrl = json['comments_url'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    lastEditedAt = json['last_edited_at'] == null ? null : DateTime.parse(json['last_edited_at']);
    htmlUrl = json['html_url'];
    nodeId = json['node_id'];
    number = json['number'];
    pinned = json['pinned'];
    private = json['private'];
    teamUrl = json['team_url'];
    title = json['title'];
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
      'comments_count': commentsCount,
      'comments_url': commentsUrl,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'last_edited_at': lastEditedAt == null ? '' : lastEditedAt.toUtc().toIso8601String(),
      'html_url': htmlUrl,
      'node_id': nodeId,
      'number': number,
      'pinned': pinned,
      'private': private,
      'team_url': teamUrl,
      'title': title,
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'url': url,
      'reactions': reactions
     };
  }

  static List<TeamDiscussion> listFromJson(List<dynamic> json) {
    return json == null ? new List<TeamDiscussion>() : json.map((value) => new TeamDiscussion.fromJson(value)).toList();
  }

  static Map<String, TeamDiscussion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TeamDiscussion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TeamDiscussion.fromJson(value));
    }
    return map;
  }
}
