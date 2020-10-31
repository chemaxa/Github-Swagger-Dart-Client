part of swagger.api;

class DeployKey {
  
  int id = null;

  String key = null;

  String url = null;

  String title = null;

  bool verified = null;

  String createdAt = null;

  bool readOnly = null;

  DeployKey();

  @override
  String toString() {
    return 'DeployKey[id=$id, key=$key, url=$url, title=$title, verified=$verified, createdAt=$createdAt, readOnly=$readOnly, ]';
  }

  DeployKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    key = json['key'];
    url = json['url'];
    title = json['title'];
    verified = json['verified'];
    createdAt = json['created_at'];
    readOnly = json['read_only'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key': key,
      'url': url,
      'title': title,
      'verified': verified,
      'created_at': createdAt,
      'read_only': readOnly
     };
  }

  static List<DeployKey> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeployKey>() : json.map((value) => new DeployKey.fromJson(value)).toList();
  }

  static Map<String, DeployKey> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeployKey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeployKey.fromJson(value));
    }
    return map;
  }
}
