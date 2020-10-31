part of swagger.api;

class Enterprise {
  /* A short description of the enterprise. */
  String description = null;

  String htmlUrl = null;
/* The enterprise's website URL. */
  String websiteUrl = null;
/* Unique identifier of the enterprise */
  int id = null;

  String nodeId = null;
/* The name of the enterprise. */
  String name = null;
/* The slug url identifier for the enterprise. */
  String slug = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String avatarUrl = null;

  Enterprise();

  @override
  String toString() {
    return 'Enterprise[description=$description, htmlUrl=$htmlUrl, websiteUrl=$websiteUrl, id=$id, nodeId=$nodeId, name=$name, slug=$slug, createdAt=$createdAt, updatedAt=$updatedAt, avatarUrl=$avatarUrl, ]';
  }

  Enterprise.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    htmlUrl = json['html_url'];
    websiteUrl = json['website_url'];
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    slug = json['slug'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    avatarUrl = json['avatar_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'html_url': htmlUrl,
      'website_url': websiteUrl,
      'id': id,
      'node_id': nodeId,
      'name': name,
      'slug': slug,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'avatar_url': avatarUrl
     };
  }

  static List<Enterprise> listFromJson(List<dynamic> json) {
    return json == null ? new List<Enterprise>() : json.map((value) => new Enterprise.fromJson(value)).toList();
  }

  static Map<String, Enterprise> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Enterprise>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Enterprise.fromJson(value));
    }
    return map;
  }
}
