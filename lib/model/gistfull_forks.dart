part of swagger.api;

class GistfullForks {
  
  RepositoryTemplateRepositoryOwner user = null;

  String url = null;

  String id = null;

  String createdAt = null;

  String updatedAt = null;

  GistfullForks();

  @override
  String toString() {
    return 'GistfullForks[user=$user, url=$url, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  GistfullForks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user = new RepositoryTemplateRepositoryOwner.fromJson(json['user']);
    url = json['url'];
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'url': url,
      'id': id,
      'created_at': createdAt,
      'updated_at': updatedAt
     };
  }

  static List<GistfullForks> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistfullForks>() : json.map((value) => new GistfullForks.fromJson(value)).toList();
  }

  static Map<String, GistfullForks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistfullForks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistfullForks.fromJson(value));
    }
    return map;
  }
}
