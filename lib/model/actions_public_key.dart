part of swagger.api;

class ActionsPublicKey {
  /* The identifier for the key. */
  String keyId = null;
/* The Base64 encoded public key. */
  String key = null;

  int id = null;

  String url = null;

  String title = null;

  String createdAt = null;

  ActionsPublicKey();

  @override
  String toString() {
    return 'ActionsPublicKey[keyId=$keyId, key=$key, id=$id, url=$url, title=$title, createdAt=$createdAt, ]';
  }

  ActionsPublicKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    keyId = json['key_id'];
    key = json['key'];
    id = json['id'];
    url = json['url'];
    title = json['title'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'key_id': keyId,
      'key': key,
      'id': id,
      'url': url,
      'title': title,
      'created_at': createdAt
     };
  }

  static List<ActionsPublicKey> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActionsPublicKey>() : json.map((value) => new ActionsPublicKey.fromJson(value)).toList();
  }

  static Map<String, ActionsPublicKey> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActionsPublicKey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActionsPublicKey.fromJson(value));
    }
    return map;
  }
}
