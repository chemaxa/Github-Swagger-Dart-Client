part of swagger.api;

class Artifact {
  
  int id = null;

  String nodeId = null;
/* The name of the artifact. */
  String name = null;
/* The size in bytes of the artifact. */
  int sizeInBytes = null;

  String url = null;

  String archiveDownloadUrl = null;
/* Whether or not the artifact has expired. */
  bool expired = null;

  DateTime createdAt = null;

  DateTime expiresAt = null;

  DateTime updatedAt = null;

  Artifact();

  @override
  String toString() {
    return 'Artifact[id=$id, nodeId=$nodeId, name=$name, sizeInBytes=$sizeInBytes, url=$url, archiveDownloadUrl=$archiveDownloadUrl, expired=$expired, createdAt=$createdAt, expiresAt=$expiresAt, updatedAt=$updatedAt, ]';
  }

  Artifact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    sizeInBytes = json['size_in_bytes'];
    url = json['url'];
    archiveDownloadUrl = json['archive_download_url'];
    expired = json['expired'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    expiresAt = json['expires_at'] == null ? null : DateTime.parse(json['expires_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'size_in_bytes': sizeInBytes,
      'url': url,
      'archive_download_url': archiveDownloadUrl,
      'expired': expired,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'expires_at': expiresAt == null ? '' : expiresAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String()
     };
  }

  static List<Artifact> listFromJson(List<dynamic> json) {
    return json == null ? new List<Artifact>() : json.map((value) => new Artifact.fromJson(value)).toList();
  }

  static Map<String, Artifact> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Artifact>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Artifact.fromJson(value));
    }
    return map;
  }
}
