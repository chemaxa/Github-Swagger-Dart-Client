part of swagger.api;

class GistComment {
  
  int id = null;

  String nodeId = null;

  String url = null;
/* The comment text. */
  String body = null;

  AllOfgistCommentUser user = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String authorAssociation = null;

  GistComment();

  @override
  String toString() {
    return 'GistComment[id=$id, nodeId=$nodeId, url=$url, body=$body, user=$user, createdAt=$createdAt, updatedAt=$updatedAt, authorAssociation=$authorAssociation, ]';
  }

  GistComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    body = json['body'];
    user = new AllOfgistCommentUser.fromJson(json['user']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    authorAssociation = json['author_association'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'body': body,
      'user': user,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'author_association': authorAssociation
     };
  }

  static List<GistComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistComment>() : json.map((value) => new GistComment.fromJson(value)).toList();
  }

  static Map<String, GistComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistComment.fromJson(value));
    }
    return map;
  }
}
