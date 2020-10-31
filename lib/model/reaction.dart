part of swagger.api;

class Reaction {
  
  int id = null;

  String nodeId = null;

  AllOfreactionUser user = null;
/* The reaction to use */
  String content = null;
  //enum contentEnum {  +1,  -1,  laugh,  confused,  heart,  hooray,  rocket,  eyes,  };

  DateTime createdAt = null;

  Reaction();

  @override
  String toString() {
    return 'Reaction[id=$id, nodeId=$nodeId, user=$user, content=$content, createdAt=$createdAt, ]';
  }

  Reaction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    user = new AllOfreactionUser.fromJson(json['user']);
    content = json['content'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'user': user,
      'content': content,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String()
     };
  }

  static List<Reaction> listFromJson(List<dynamic> json) {
    return json == null ? new List<Reaction>() : json.map((value) => new Reaction.fromJson(value)).toList();
  }

  static Map<String, Reaction> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Reaction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Reaction.fromJson(value));
    }
    return map;
  }
}
