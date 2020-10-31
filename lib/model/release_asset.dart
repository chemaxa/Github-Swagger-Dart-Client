part of swagger.api;

class ReleaseAsset {
  
  String url = null;

  String browserDownloadUrl = null;

  int id = null;

  String nodeId = null;
/* The file name of the asset. */
  String name = null;

  String label = null;
/* State of the release asset. */
  String state = null;
  //enum stateEnum {  uploaded,  };

  String contentType = null;

  int size = null;

  int downloadCount = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  AllOfreleaseAssetUploader uploader = null;

  ReleaseAsset();

  @override
  String toString() {
    return 'ReleaseAsset[url=$url, browserDownloadUrl=$browserDownloadUrl, id=$id, nodeId=$nodeId, name=$name, label=$label, state=$state, contentType=$contentType, size=$size, downloadCount=$downloadCount, createdAt=$createdAt, updatedAt=$updatedAt, uploader=$uploader, ]';
  }

  ReleaseAsset.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    browserDownloadUrl = json['browser_download_url'];
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    label = json['label'];
    state = json['state'];
    contentType = json['content_type'];
    size = json['size'];
    downloadCount = json['download_count'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    uploader = new AllOfreleaseAssetUploader.fromJson(json['uploader']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'browser_download_url': browserDownloadUrl,
      'id': id,
      'node_id': nodeId,
      'name': name,
      'label': label,
      'state': state,
      'content_type': contentType,
      'size': size,
      'download_count': downloadCount,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'uploader': uploader
     };
  }

  static List<ReleaseAsset> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReleaseAsset>() : json.map((value) => new ReleaseAsset.fromJson(value)).toList();
  }

  static Map<String, ReleaseAsset> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReleaseAsset>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReleaseAsset.fromJson(value));
    }
    return map;
  }
}
