part of swagger.api;

class Key {
  
  String keyId = null;

  String key = null;

  int id = null;

  String url = null;

  String title = null;

  DateTime createdAt = null;

  bool verified = null;

  bool readOnly = null;

  Key();

  @override
  String toString() {
    return 'Key[keyId=$keyId, key=$key, id=$id, url=$url, title=$title, createdAt=$createdAt, verified=$verified, readOnly=$readOnly, ]';
  }

  Key.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    keyId = json['key_id'];
    key = json['key'];
    id = json['id'];
    url = json['url'];
    title = json['title'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    verified = json['verified'];
    readOnly = json['read_only'];
  }

  Map<String, dynamic> toJson() {
    return {
      'key_id': keyId,
      'key': key,
      'id': id,
      'url': url,
      'title': title,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'verified': verified,
      'read_only': readOnly
     };
  }

  static List<Key> listFromJson(List<dynamic> json) {
    return json == null ? new List<Key>() : json.map((value) => new Key.fromJson(value)).toList();
  }

  static Map<String, Key> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Key>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Key.fromJson(value));
    }
    return map;
  }
}
