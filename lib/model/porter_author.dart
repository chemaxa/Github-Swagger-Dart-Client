part of swagger.api;

class PorterAuthor {
  
  int id = null;

  String remoteId = null;

  String remoteName = null;

  String email = null;

  String name = null;

  String url = null;

  String importUrl = null;

  PorterAuthor();

  @override
  String toString() {
    return 'PorterAuthor[id=$id, remoteId=$remoteId, remoteName=$remoteName, email=$email, name=$name, url=$url, importUrl=$importUrl, ]';
  }

  PorterAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    remoteId = json['remote_id'];
    remoteName = json['remote_name'];
    email = json['email'];
    name = json['name'];
    url = json['url'];
    importUrl = json['import_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'remote_id': remoteId,
      'remote_name': remoteName,
      'email': email,
      'name': name,
      'url': url,
      'import_url': importUrl
     };
  }

  static List<PorterAuthor> listFromJson(List<dynamic> json) {
    return json == null ? new List<PorterAuthor>() : json.map((value) => new PorterAuthor.fromJson(value)).toList();
  }

  static Map<String, PorterAuthor> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PorterAuthor>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PorterAuthor.fromJson(value));
    }
    return map;
  }
}
