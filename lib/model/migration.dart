part of swagger.api;

class Migration {
  
  int id = null;

  AllOfmigrationOwner owner = null;

  String guid = null;

  String state = null;

  bool lockRepositories = null;

  bool excludeAttachments = null;

  List<Repository> repositories = [];

  String url = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String nodeId = null;

  String archiveUrl = null;

  List<Object> exclude = [];

  Migration();

  @override
  String toString() {
    return 'Migration[id=$id, owner=$owner, guid=$guid, state=$state, lockRepositories=$lockRepositories, excludeAttachments=$excludeAttachments, repositories=$repositories, url=$url, createdAt=$createdAt, updatedAt=$updatedAt, nodeId=$nodeId, archiveUrl=$archiveUrl, exclude=$exclude, ]';
  }

  Migration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    owner = new AllOfmigrationOwner.fromJson(json['owner']);
    guid = json['guid'];
    state = json['state'];
    lockRepositories = json['lock_repositories'];
    excludeAttachments = json['exclude_attachments'];
    repositories = Repository.listFromJson(json['repositories']);
    url = json['url'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    nodeId = json['node_id'];
    archiveUrl = json['archive_url'];
    exclude = Object.listFromJson(json['exclude']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'owner': owner,
      'guid': guid,
      'state': state,
      'lock_repositories': lockRepositories,
      'exclude_attachments': excludeAttachments,
      'repositories': repositories,
      'url': url,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'node_id': nodeId,
      'archive_url': archiveUrl,
      'exclude': exclude
     };
  }

  static List<Migration> listFromJson(List<dynamic> json) {
    return json == null ? new List<Migration>() : json.map((value) => new Migration.fromJson(value)).toList();
  }

  static Map<String, Migration> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Migration>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Migration.fromJson(value));
    }
    return map;
  }
}
