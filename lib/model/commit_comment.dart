part of swagger.api;

class CommitComment {
  
  String htmlUrl = null;

  String url = null;

  int id = null;

  String nodeId = null;

  String body = null;

  String path = null;

  int position = null;

  int line = null;

  String commitId = null;

  AllOfcommitCommentUser user = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String authorAssociation = null;

  ReactionRollup reactions = null;

  CommitComment();

  @override
  String toString() {
    return 'CommitComment[htmlUrl=$htmlUrl, url=$url, id=$id, nodeId=$nodeId, body=$body, path=$path, position=$position, line=$line, commitId=$commitId, user=$user, createdAt=$createdAt, updatedAt=$updatedAt, authorAssociation=$authorAssociation, reactions=$reactions, ]';
  }

  CommitComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    htmlUrl = json['html_url'];
    url = json['url'];
    id = json['id'];
    nodeId = json['node_id'];
    body = json['body'];
    path = json['path'];
    position = json['position'];
    line = json['line'];
    commitId = json['commit_id'];
    user = new AllOfcommitCommentUser.fromJson(json['user']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    authorAssociation = json['author_association'];
    reactions = new ReactionRollup.fromJson(json['reactions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'html_url': htmlUrl,
      'url': url,
      'id': id,
      'node_id': nodeId,
      'body': body,
      'path': path,
      'position': position,
      'line': line,
      'commit_id': commitId,
      'user': user,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'author_association': authorAssociation,
      'reactions': reactions
     };
  }

  static List<CommitComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitComment>() : json.map((value) => new CommitComment.fromJson(value)).toList();
  }

  static Map<String, CommitComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitComment.fromJson(value));
    }
    return map;
  }
}
